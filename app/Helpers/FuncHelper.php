<?php
    if (!function_exists('saveTempFileCSV')) {
        /**
         * strIndex is used if you need to convert a number to a string
         */
        function saveTempFileCSV($fileName, $data, $strIndex = [])
        {
            $folderPath = storage_path('app/public/temp-files');
            $filePath   = $folderPath . '/' . $fileName;
            $file       = fopen($filePath, 'w');
            fputs($file, "\xEF\xBB\xBF");
            foreach ($data as $row) {
                if (!empty($strIndex)) {
                    foreach ($strIndex as $index) {
                        $row[$index] = (string)($row[$index]) . "\t";
                    }
                }
                fputcsv($file, $row);
            }
            fclose($file);
        }
    }
    if (!function_exists('existAndNotEmpty')) {
        function existAndNotEmpty($arr, $key)
        {
            if (array_key_exists($key, $arr)) {
                if (!empty($arr[$key])) {
                    return true;
                }
            }
            return false;
        }
    }
    if (!function_exists('existAndNotEmptyObj')) {
        function existAndNotEmptyObj($obj, $key)
        {
            if (isset($obj->$key)) {
                if (!empty($obj->$key)) {
                    return true;
                }
            }
            return false;
        }
    }
    if (!function_exists('isNotNumber')) {
        function isNumber($value)
        {
            if (filter_var($value, FILTER_VALIDATE_INT) !== false || filter_var($value, FILTER_VALIDATE_FLOAT) !== false) {
                return true;
            }
            return false;
        }
    }
    if (!function_exists('startsWith')) {
        function startsWith($haystack, $needle)
        {
            return strncmp($haystack, $needle, strlen($needle)) === 0;
        }
    }
    if (!function_exists('callFuncEncrypPhalcon')) {
        function callFuncEncrypPhalcon($data)
        {
            $curl = curl_init();
            $url  = 'https://admin.globalvisacorp.com/crypt/encrypt';
            $data = [ 'data' => $data ];
            curl_setopt($curl, CURLOPT_URL, $url);
            curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($curl, CURLOPT_POST, true);
            curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($data));
            $response = curl_exec($curl);
            if (curl_errno($curl)) {
                return false;
            } else {
                curl_close($curl);
            }
            $data = json_decode($response);
            return $data->data;
        }
    }
    if (!function_exists('generateToken')) {

        function generateToken($length = 12)
        {
            $characters       = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ~!@#$%^&*()_+<>?,./;:|{}[]';
            $charactersLength = strlen($characters);
            $randomString     = '';
            for ($i = 0; $i < $length; $i++) {
                $randomString .= $characters[rand(0, $charactersLength - 1)];
            }
            return $randomString;
        }

    }
    if (!function_exists('encodePass')) {
        function encodePass($pass)
        {
            $passSalt  = salt();
            $iteration = 10000;
            $hashPass  = "pbkdf2_sha256\$" . $iteration . "\$" . $passSalt . "\$" . base64_encode(hash_pbkdf2("sha256", $pass, $passSalt, $iteration, 32, true));
            return $hashPass;
        }
    }
    if (!function_exists('salt')) {
        function salt($lenght = 12)
        {
            $characters       = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
            $charactersLength = strlen($characters);
            $randomString     = '';
            for ($i = 0; $i < $lenght; $i++) {
                $randomString .= $characters[rand(0, $charactersLength - 1)];
            }
            return $randomString;
        }
    }
    if (!function_exists('gen_uuid')) {
        function gen_uuid()
        {
            return sprintf('%04x%04x-%04x-%04x-%04x-%04x%04x%04x', // 32 bits for "time_low"
                mt_rand(0, 0xffff), mt_rand(0, 0xffff),            // 16 bits for "time_mid"
                mt_rand(0, 0xffff),                                // 16 bits for "time_hi_and_version",
                // four most significant bits holds version number 4
                mt_rand(0, 0x0fff)|0x4000,                         // 16 bits, 8 bits for "clk_seq_hi_res",
                // 8 bits for "clk_seq_low",
                // two most significant bits holds zero and one for variant DCE1.1
                mt_rand(0, 0x3fff)|0x8000,                         // 48 bits for "node"
                mt_rand(0, 0xffff), mt_rand(0, 0xffff), mt_rand(0, 0xffff)
            );
        }
    }
    if (!function_exists('propertyExistsMul')) {
        function propertyExistsMul($class, $key = [])
        {
            $res = true;
            if (!empty($key)) {
                foreach ($key as $val) {
                    if (!property_exists($class, $val)) {
                        $res = false;
                    }
                }
            }
            return $res;
        }
    }
    if (!function_exists('encryptData')) {
        function encryptData($data)
        {
            $encryptedData = \Illuminate\Support\Facades\Crypt::encryptString($data);
            return $encryptedData;
        }
    }
    if (!function_exists('decryptData')) {
        function decryptData($encryptedData)
        {
            $decryptedData = \Illuminate\Support\Facades\Crypt::decryptString($encryptedData);
            return $decryptedData;
        }
    }
