<?php
    use Illuminate\Support\Facades\Schema;
    if(!function_exists('checkSchemaBySite')){
        function checkSchemaBySite ($site_id, $query, $arr_col){
            $res = [];
            foreach($arr_col as $col){
                if(Schema::connection(ReturnConnect($site_id))->hasColumn($query->getModel()->getTable(), $col)){
                    $res[] = $col;
                }
            }
            return $res;
        }
    }
    if(!function_exists('CheckExistTable')){
        function CheckExistTable ($site_id, $table){
            if(Schema::connection(ReturnConnect($site_id))->hasTable($table)){
                return true;
            }
            return false;
        }
    }
    if(!function_exists('CheckExistColumn')){
        function CheckExistColumn ($site_id, $table , $column){
            if(Schema::connection(ReturnConnect($site_id))->hasColumn($table, $column)){
                return true;
            }
            return false;
        }
    }
    if(!function_exists('ListSite')){
        function ListSite (){
            return config('site');
        }
    }
    if(!function_exists('ReturnConnect')){
        function ReturnConnect ($site_id){
            $arr_connect = ListSite();
            if(array_key_exists($site_id, $arr_connect) && isset($arr_connect[ $site_id ])){
                return $arr_connect[ $site_id ][ 'site_connect' ];
            }
            return false;
        }
    }
    if(!function_exists('ReturnDomain')){
        function ReturnDomain ($site_id){
            $arr_connect = ListSite();
            if(array_key_exists($site_id, $arr_connect) && isset($arr_connect[ $site_id ])){
                return $arr_connect[ $site_id ][ 'site_domain' ];
            }
            return false;
        }
    }
    if(!function_exists('ReturnSiteCode')){
        function ReturnSiteCode ($site_id){
            $arr_connect = ListSite();
            if(array_key_exists($site_id, $arr_connect) && isset($arr_connect[ $site_id ])){
                return $arr_connect[ $site_id ][ 'site_code' ];
            }
            return false;
        }
    }
    if(!function_exists('ReturnSiteName')){
        function ReturnSiteName ($site_id){
            $arr_connect = ListSite();
            if(array_key_exists($site_id, $arr_connect) && isset($arr_connect[ $site_id ])){
                return $arr_connect[ $site_id ][ 'site_name' ];
            }
            return false;
        }
    }
    if(!function_exists('ReturnSiteNumber')){
        function ReturnSiteNumber ($site_id){
            $arr_connect = ListSite();
            if(array_key_exists($site_id, $arr_connect) && isset($arr_connect[ $site_id ])){
                return $arr_connect[ $site_id ][ 'site_number' ];
            }
            return false;
        }
    }
    if(!function_exists('ReturnStatusDateArrival')){
        function ReturnStatusDateArrival ($site_id){
            $arr_connect = ListSite();
            if(array_key_exists($site_id, $arr_connect) && isset($arr_connect[ $site_id ])){
                if(isset($arr_connect[ $site_id ][ 'date_arrival_utc' ])){
                    return $arr_connect[ $site_id ][ 'date_arrival_utc' ];
                }
            }
            return false;
        }
    }
    if(!function_exists('ReturnSiteInfo')){
        function ReturnSiteInfo ($site_id){
            $arr_connect = ListSite();
            if(array_key_exists($site_id, $arr_connect) && isset($arr_connect[ $site_id ])){
                if(isset($arr_connect[ $site_id ][ 'site_info' ])){
                    return $arr_connect[ $site_id ][ 'site_info' ];
                }
            }
            return false;
        }
    }
    if(!function_exists('ReturnSiteStatusNewPayment')){
        function ReturnSiteStatusNewPayment ($site_id){
            $arr_connect = ListSite();
            if(array_key_exists($site_id, $arr_connect) && isset($arr_connect[ $site_id ])){
                if(isset($arr_connect[ $site_id ][ 'site_new_payment' ])){
                    return $arr_connect[ $site_id ][ 'site_new_payment' ];
                }
            }
            return false;
        }
    }
    if(!function_exists('CheckIsVietNamVisaCorp')){
        function CheckIsVietNamVisaCorp ($site_id){
            $arr_connect = ListSite();
            if(array_key_exists($site_id, $arr_connect) && isset($arr_connect[ $site_id ])){
                if($arr_connect[ $site_id ] == 39){
                    return true;
                }
            }
            return false;
        }
    }
