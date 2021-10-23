<?php


class Fiets
{
    public $id;
    public $merk;
    public $type;
    public $prijs;

    public function __construct(){
        settype($this->id, 'integer');
    }

}