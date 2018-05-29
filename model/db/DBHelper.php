<?php
Class DBHelper{
    
    private $hostname='localhost';
    private $database='school_db';
    private $username='root';
    private $password='';
    private $conn;

    function dbconn(){
        try{
            $this->conn=new PDO("mysql:host=$this->hostname;dbname=$this->database",$this->username,$this->password);
        }catch(PDOException $e){
            echo $e->getMessage();
        }
    }
    function loginuser($user,$pass,$type){
        $flag=false;
        $prefix=$type=="student"?"stud_":"prof_";
        $sql="SElECT * FROM ".($prefix=="stud_"?"tbl_student":"tbl_professor")." WHERE ".$pre."idno = ? AND ". $pre."password = ?";
    }

}