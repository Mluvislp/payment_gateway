<?php


namespace App\Libraries\AmericanExpress\models;

/**
 * Class SourceOfFunds
 * @package AmericanExpress\models
 * @property string $type
 * @property object $provided
 */
class SourceOfFunds
{
    const TYPE_CARD = 'CARD';
    const TYPE_ACH = 'ACH';
    const TYPE_ALIPAY = 'ALIPAY';

}
