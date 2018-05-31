<?php
session_start();
Class DBHelper{
    
    private $hostname='localhost';
    private $database='school_db';
    private $username='root';
    private $password='';
    private $conn;

    function __construct(){
        try{
            $this->conn=new PDO("mysql:host=$this->hostname;dbname=$this->database",$this->username,$this->password);
        }catch(PDOException $e){
            echo $e->getMessage();
        }
    }
    function loginuser($data,$type){
        $flag=false;
        $prefix=($type=="student")?"stud_":"prof_";
        $sql="SElECT * FROM ".($prefix=="stud_"?"tbl_student":"tbl_professor")." WHERE ".$prefix."idno = ? AND ". $prefix."password = ?";
        // $sql="SELECT * FROM tbl_student WHERE stud_idno=? AND stud_password=?";
        $stmt=$this->conn->prepare($sql);
        $stmt->execute($data);
        $user=$stmt->fetch(PDO::FETCH_ASSOC);
        if($stmt->rowCount() > 0){
            $_SESSION['user_info']=$user[$prefix.'lname'].",".$user[$prefix.'fname'];
            $_SESSION['user_id']=$user[$prefix.'idno'];
            $_SESSION['user_type']=$type;
            $flag=true;
        }
        $this->conn=null;
        return $flag;
    }//end logginuser


}