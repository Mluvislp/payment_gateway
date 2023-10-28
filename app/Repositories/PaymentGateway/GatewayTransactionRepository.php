<?php

namespace App\Repositories\PaymentGateway;

use App\Models\GVCGL\GatewayTransaction;

class GatewayTransactionRepository
{
    public function createTransaction($data){
        return GatewayTransaction::create($data);
    }

    public function updateTransaction($condition, $data){
        return GatewayTransaction::query()->where($condition)->update($data);
    }

    public function findFirstTransaction($condition){
        return GatewayTransaction::query()->where($condition)->first();
    }

    public function getTransactionReference($site_id, $order_id, $type){
        $condition = [
             'transaction_site_id' => $site_id ,
             'transaction_order_id' => $order_id ,
             'transaction_type' => $type ,
        ];

        $result = $this->findFirstTransaction($condition);

        if($result){
            return $result->transaction_reference;
        }

        return false;
    }
}
