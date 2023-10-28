<?php
namespace App\Libraries\PayPalRestApi;
/**
 * Class Obj
 * @property $id
 */
class Obj
{
    public function __construct($data)
    {
        $data = json_decode(json_encode($data));
        foreach ($data as $attr => $value) {
            $this->$attr = $value;
        }
    }
}
