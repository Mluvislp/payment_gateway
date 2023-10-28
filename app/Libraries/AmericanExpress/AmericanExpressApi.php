<?php
namespace App\Libraries\AmericanExpress;

/**
 * Class AmericanExpressApi
 * @package AmericanExpress
 */
class AmericanExpressApi
{
    public $gatewayUrl;
    public $merchantId;
    public $apiUsername;
    public $apiPassword;

    public $version = 57;

    public function __construct()
    {
        $merchantId        = config('gateway.american_express.merchant_id');
        $apiPassword       = config('gateway.american_express.api_password');
        $this->merchantId  = $merchantId;
        $this->apiUsername = 'merchant.' . $merchantId;
        $this->apiPassword = $apiPassword;
        $this->gatewayUrl  = 'https://gateway-japa.americanexpress.com/api/rest/version/'.$this->version.'/merchant/'.$merchantId.'/';
    }

    public function get($urlAction = null, $requestBody = null)
    {
        return $this->call($urlAction, $requestBody, 'GET');
    }


    public function post($urlAction = null, $requestBody = null)
    {
        return $this->call($urlAction, $requestBody, 'POST');
    }

    /**
     * @param string $urlAction
     * @param null|array $requestBody
     */
    public function put($urlAction = null, $requestBody = null)
    {
        return $this->call($urlAction, $requestBody, 'PUT');
    }

    /** @param string $urlAction
     * @param null|array $requestBody
     */
    public function patch($urlAction = null, $requestBody = null)
    {
        return $this->call($urlAction, $requestBody, 'PATCH');
    }

    /**
     * @param string $urlAction
     * @param null|array $requestBody
     */
    public function delete($urlAction = null, $requestBody = null)
    {
        return $this->call($urlAction, $requestBody, 'DELETE');
    }

    protected function call($urlAction, $requestBody = null, $method = 'GET')
    {
        ini_set('max_execution_time', 180);

        $curl = curl_init();
        $headers = [
            'Authorization: Basic ' . base64_encode($this->apiUsername.':'.$this->apiPassword),
            'Content-Type: application/json'
        ];
        curl_setopt_array($curl, array(
            CURLOPT_URL => $this->gatewayUrl . $urlAction,
            CURLOPT_HTTPHEADER => $headers,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => $method,
            CURLOPT_POSTFIELDS => is_array($requestBody) ? json_encode($requestBody) : '',
        ));

        $responseText = curl_exec($curl);

        // Then, after your curl_exec call:
        $errorMessage = curl_error($curl);
        $httpCode = curl_getinfo($curl, CURLINFO_HTTP_CODE );

        curl_close($curl);

        $response = new ResponseApi();
        $response->isSuccess = 200 <= $httpCode && $httpCode < 300;
        $response->data = $responseText;
        if (400 <= $httpCode && $httpCode < 500) {
            $response->error = json_decode($responseText)->error->explanation;
        } else {
            $response->error = $errorMessage;
        }

        return $response;

    }

    public static function getErrorMsg($gatewayCode){
        $errorList = [
            'DECLINED' => 'The requested operation was not successful. For example, a payment was declined by issuer or payer authentication was not able to be successfully completed.',
            'ABORTED' => 'Transaction aborted by card holder',
            'ACQUIRER_SYSTEM_ERROR' => 'Acquirer system error occured processing the transaction',
            'AUTHENTICATION_FAILED' => '3D Secure authentication failed',
            'BLOCKED' => 'Transaction blocked due to Risk or 3D Secure blocking rules',
            'CANCELLED' => 'Transaction cancelled by card holder',
            'PENDING' => '	Transaction is pending',
            'APPROVED_PENDING_SETTLEMENT' => 'Transaction Approved - pending batch settlement',
            'REFERRED' => 'Transaction declined - refer to issuer',
            'DECLINED_AVS' => 'Transaction declined due to address verification',
            'DECLINED_AVS_CSC' => 'Transaction declined due to address verification and card security code',
            'DECLINED_CSC' => '	Transaction declined due to card security code',
            'DECLINED_DO_NOT_CONTACT' => 'Transaction declined - do not contact issuer',
            'DEFERRED_TRANSACTION_RECEIVED' => 'Deferred transaction received and awaiting processing',
            'DUPLICATE_BATCH' => 'Transaction declined due to duplicate batch',
            'EXCEEDED_RETRY_LIMIT' => 'Transaction retry limit exceeded',
            'EXPIRED_CARD' => 'Transaction declined due to expired card',
            'INSUFFICIENT_FUNDS' => 'Transaction declined due to insufficient funds',
            'INVALID_CSC' => 'Invalid card security code',
            'LOCK_FAILURE' => 'Order locked - another transaction is in progress for this order',
            'NOT_ENROLLED_3D_SECURE' => 'Card holder is not enrolled in 3D Secure',
            'NOT_SUPPORTED' => 'Transaction type not supported',
            'SYSTEM_ERROR' => 'Internal system error occurred processing the transaction',
            'TIMED_OUT' => 'Response timed out',
            'UNKNOWN' => 'Response unknown',
            'UNSPECIFIED_FAILURE' => 'Transaction could not be processed',
        ];

        return isset($errorList[$gatewayCode]) ? $errorList[$gatewayCode] : $gatewayCode;
    }


}
