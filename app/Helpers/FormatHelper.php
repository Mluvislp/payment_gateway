<?php

    if(!function_exists('dateToTimeStampForSearch')){
        function dateToTimeStampForSearch ($date, $zone = 0){
            return ( strtotime($date) - $zone * 60 * 60 );
        }
    }
    if(!function_exists('formatDate')){
        function formatDate ($time){
            return strftime('%b/%d/%Y', $time);
        }
    }
    if(!function_exists('formatTime')){
        function formatTime ($time){
            return strftime('%m/%d/%Y %H:%M', (int)$time + 7*3600);
        }
    }
    if(!function_exists('formatDateTime')){
        function formatDateTime ($time){
            return strftime('%b/%d/%Y %H:%M:%S', $time);
        }
    }
    if(!function_exists('formatDateTimeByZone')){
        function formatDateTimeByZone ($time, $zone){
            return strftime('%b/%d/%Y %H:%M:%S', ( $time + $zone * 60 * 60 ));
        }
    }
    if(!function_exists('formatDateByZone')){
        function formatDateByZone ($time, $zone){
            return strftime('%b/%d/%Y', ( $time + $zone * 60 * 60 ));
        }
    }
    if(!function_exists('formatDateMDYHMSByZone')){
        function formatDateMDYHMSByZone($time , $local_timezone)
        {
            return date('M/d/Y H:i:s', $time + ($local_timezone*3600));
        }
    }
    if(!function_exists('formatDateMDYByZone')){
        function formatDateMDYByZone($time , $local_timezone)
        {
            return date('M/d/Y', $time + ($local_timezone*3600));
        }
    }
    if(!function_exists('renderHtmlTime')){
        function renderHtmlTime ($time, $local_zone, $zone){
            $plus       = $zone > 0 ? "+" : "";
            $plus_local = $local_zone > 0 ? "+" : "";
            $str        = "<b>GMT " . $plus_local . $local_zone . " :</b> " . formatDateTimeByZone($time, $local_zone) . "<br>" . "<b>GMT " . $plus . $zone . "</b> : " . formatDateTimeByZone($time, $zone);
            return $str;
        }
    }
    if(!function_exists('formatSubID')){
        function formatSubID ($idType, $insertTime, $id, $site_number, $options){
            $insertYear = date('Y', $insertTime);
            $y          = substr($insertYear, strlen($insertYear) - 1);
            return $site_number . sprintf("%s%s%s%04d%s", $idType, $y, $options[ 'subType' ], $id, $options[ 'suffix' ]);
        }
    }
    if(!function_exists('formatOrderID')){
        function formatOrderID ($insertTime, $id, $site_number){
            return formatSubID(2, $insertTime, $id, $site_number, array( "subType" => "",
                                                                         "suffix"  => "" ));
        }
    }
    if(!function_exists('formatPaymentID')){
        function formatPaymentID ($insertTime, $id, $site_number){
            return formatSubID(3, $insertTime, $id, $site_number, array( "subType" => "",
                                                                         "suffix"  => "" ));
        }
    }
    if(!function_exists('formatInsuranceID')){
        function formatInsuranceID ($insertTime, $id, $site_number){
            return formatSubID(8, $insertTime, $id, $site_number, array( "subType" => "",
                                                                         "suffix"  => "" ));
        }
    }
    if(!function_exists('formatReceiptID')){
        function formatReceiptID ($insertTime, $id, $n, $site_number){
            return formatSubID(2, $insertTime, $id, $site_number, array( "subType" => "",
                                                                         "suffix"  => "_" . $n ));
        }
    }
    if(!function_exists('formatUSD')){
        function formatUSD ($number){
            $number = floatval($number);
            return number_format($number, 2, '.', ',');
        }
    }
    if(!function_exists('formatID')){
        function formatID ($idType, $insertTime, $id, $site_number, $suffix = ''){
            $insertYear = date('Y', $insertTime);
            $y          = substr($insertYear, strlen($insertYear) - 1);
            return $site_number . sprintf("%s%s%04d%s", $idType, $y, $id, $suffix);
        }
    }
    if(!function_exists('formatUserID')){
        function formatUserID ($insertTime, $id, $site_number){
            return formatID(1, $insertTime, $id, $site_number);
        }
    }


