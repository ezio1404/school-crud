<?php
include 'db/DBHelper.php';
Class Login extends DBHelper 
{
    function __construct(){
        return DBHelper::__construct();
    }   
    function login($data,$type){
        return DBHelper::loginuser($data,$type);
    }
}
