<?php
namespace App\modals;

class ShowData{
    public static function showDate($data, $format = "d.m.Y"){
        return date($format, strtotime($data));
    }

    public static function showText($data, $length = 100, $symbols = '...'){
        return mb_substr($data, 0, $length).$symbols;
    }
}