<?php

if(!function_exists('dateToTimeStampForSearch')){
    function dateToTimeStampForSearch ($date, $zone = 0){
        return ( strtotime($date) - $zone * 60 * 60 );
    }
}
