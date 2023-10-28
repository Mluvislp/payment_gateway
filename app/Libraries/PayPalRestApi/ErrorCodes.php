<?php

namespace App\Libraries\PayPalRestApi;

class ErrorCodes
{

    public static function getErrorMsg($errorCode)
    {
        $errorList = [
            '0000' => 'APPROVED',
            '0100' => 'REFERRAL',
            '0800' => 'BAD_RESPONSE_REVERSAL_REQUIRED',
            '1000' => 'PARTIAL_AUTHORIZATION',
            '1300' => 'INVALID_DATA_FORMAT',
            '1310' => 'INVALID_AMOUNT',
            '1312' => 'INVALID_TRANSACTION_CARD_ISSUER_ACQUIRER',
            '1317' => 'INVALID_CAPTURE_DATE',
            '1320' => 'INVALID_CURRENCY_CODE',
            '1330' => 'INVALID_ACCOUNT',
            '1335' => 'INVALID_ACCOUNT_RECURRING',
            '1340' => 'INVALID_TERMINAL',
            '1350' => 'INVALID_MERCHANT',
            '1360' => 'BAD_PROCESSING_CODE',
            '1370' => 'INVALID_MCC',
            '1380' => 'INVALID_EXPIRATION',
            '1382' => 'INVALID_CARD_VERIFICATION_VALUE',
            '1384' => 'INVALID_LIFE_CYCLE_OF_TRANSACTION',
            '1390' => 'INVALID_ORDER',
            '1393' => 'TRANSACTION_CANNOT_BE_COMPLETED',
            '0500' => 'DO_NOT_HONOR',
            '5100' => 'GENERIC_DECLINE',
            '5110' => 'CVV2_FAILURE',
            '5120' => 'INSUFFICIENT_FUNDS',
            '5130' => 'INVALID_PIN',
            '5140' => 'CARD_CLOSED',
            '5150' => 'PICKUP_CARD_SPECIAL_CONDITIONS. Try using another card. Do not retry the same card',
            '5160' => 'UNAUTHORIZED_USER',
            '5170' => 'AVS_FAILURE',
            '5180' => 'INVALID_OR_RESTRICTED_CARD. Try using another card. Do not retry the same card',
            '5190' => 'SOFT_AVS',
            '5200' => 'DUPLICATE_TRANSACTION',
            '5210' => 'INVALID_TRANSACTION',
            '5400' => 'EXPIRED_CARD',
            '5500' => 'INCORRECT_PIN_REENTER',
            '5800' => 'REVERSAL_REJECTED',
            '5900' => 'INVALID_ISSUE',
            '5910' => 'ISSUER_NOT_AVAILABLE_NOT_RETRIABLE',
            '5920' => 'ISSUER_NOT_AVAILABLE_RETRIABLE',
            '6300' => 'ACCOUNT_NOT_ON_FILE',
            '7600' => 'APPROVED_NON_CAPTURE',
            '7700' => 'ERROR_3DS',
            '7710' => 'AUTHENTICATION_FAILED',
            '7800' => 'BIN_ERROR',
            '7900' => 'PIN_ERROR',
            '8000' => 'PROCESSOR_SYSTEM_ERROR',
            '8010' => 'HOST_KEY_ERROR',
            '8020' => 'CONFIGURATION_ERROR',
            '8030' => 'UNSUPPORTED_OPERATION',
            '8100' => 'FATAL_COMMUNICATION_ERROR',
            '8110' => 'RETRIABLE_COMMUNICATION_ERROR',
            '8220' => 'SYSTEM_UNAVAILABLE',
            '9100' => 'DECLINED_PLEASE_RETRY. Retry',
            '9500' => 'SUSPECTED_FRAUD. Try using another card. Do not retry the same card',
            '9510' => 'SECURITY_VIOLATION',
            '9520' => 'LOST_OR_STOLEN. Try using another card. Do not retry the same card',
            '9530' => 'HOLD_CALL_CENTER. The merchant must call the number on the back of the card. POS scenario',
            '9540' => 'REFUSED_CARD',
            '9600' => 'UNRECOGNIZED_RESPONSE_CODE',
            '5930' => 'CARD_NOT_ACTIVATED'
        ];
        if (isset($errorList[$errorCode])) {
            return $errorList[$errorCode];
        }
        return false;
    }

}
