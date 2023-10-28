<?php

namespace App\Services\PaymentGateway;

use App\Repositories\PaymentGateway\GatewayTransactionRepository;

class GatewayTransactionService
{

    private $gatewayTransactionRepository;

    public function __construct(GatewayTransactionRepository $gatewayTransactionRepository)
    {
        $this->gatewayTransactionRepository = $gatewayTransactionRepository;
    }

    public function findFirstTransaction($condition){
        return $this->gatewayTransactionRepository->findFirstTransaction($condition);
    }

    public function updateTransaction($condition, $data){
        return $this->gatewayTransactionRepository->updateTransaction($condition, $data);
    }

    public function createGatewayTransaction($data, $reference_id)
    {
        $findCondition = [
            'transaction_site_id'  => $data['site_id'],
            'transaction_order_id' => $data['order_id'],
            'transaction_type'     => $data['type_payment'],
        ];

        $checkExistTransaction = $this->gatewayTransactionRepository->findFirstTransaction($findCondition);

        if (!$checkExistTransaction) {
            $input = [
                'transaction_site_id'              => $data['site_id'],
                'transaction_order_id'             => $data['order_id'],
                'transaction_reference'            => $reference_id,
                'transaction_amount'               => $data['total'],
                'transaction_currency'             => config('gateway.currency.default'),
                'transaction_payment_gateway_id'   => $data['payment_gateway_id'],
                'transaction_payment_gateway_name' => $data['payment_gateway_name'],
                'transaction_type'                 => $data['type_payment'],
                'transaction_insert_date'          => time(),
                'transaction_pay_date'             => null,
                'transaction_ipaddress'            => $data['ip'],
                'transaction_response'             => null,
                'transaction_fail_reason'          => null,
                'transaction_fail_count'           => 0,
                'transaction_status'               => 'Pending'
            ];

            return $this->gatewayTransactionRepository->createTransaction($input);
        }

        $input = [
            'transaction_reference'            => $reference_id,
            'transaction_amount'               => $data['total'],
            'transaction_currency'             => config('gateway.currency.default'),
            'transaction_payment_gateway_id'   => $data['payment_gateway_id'],
            'transaction_payment_gateway_name' => $data['payment_gateway_name'],
        ];

        return $this->gatewayTransactionRepository->updateTransaction($findCondition, $input);
    }

}
