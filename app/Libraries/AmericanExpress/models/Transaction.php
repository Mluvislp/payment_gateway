<?php


namespace App\Libraries\AmericanExpress\models;

/**
 * Class Transaction
 * @package AmericanExpress\models
 * @property string $apiOperation
 * @property string $correlationId
 * @property Order $order
 * @property Authentication $authentication
 * @property SourceOfFunds $sourceOfFunds
 * @property Response $response
 * @property Device $device
 * @property string $result
 * @property string $version
 * @property string $timeOfLastUpdate
 * @property string $timeOfRecord
 */
class Transaction
{
    CONST OPERATION_INITIATE_AUTHENTICATION = 'INITIATE_AUTHENTICATION';
    CONST OPERATION_AUTHENTICATE_PAYER = 'AUTHENTICATE_PAYER';
    CONST OPERATION_PAY = 'PAY';
    CONST OPERATION_AUTHORIZE = 'AUTHORIZE';
    CONST OPERATION_CAPTURE = 'CAPTURE';
    CONST OPERATION_VERIFY = 'VERIFY';
    CONST OPERATION_REFUND = 'REFUND';
}
