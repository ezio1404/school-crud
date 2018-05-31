<?php
include '../../model/loginModel.php';
$log=new Login();
if(isset($_POST['login'])){
    $idno=$_POST['idno'];
    $pass=$_POST['pass'];
    $type=$_POST['type'];
    // echo $idno;
    // echo $pass;
    // echo $idno;
    $data=array($idno,$pass);
    $ok=$log->login($data,$type);
    // echo $ok?"shit":"shittttt";
    if ($ok){
        header('location:../../view/'.($_SESSION['user_type']=='student'?'student':'professor').'.php?id='.$_SESSION['user_id'].'?user='.$_SESSION['user_type']); // redirect page
    }
    else{
        header('location:../../index.php?id=?'.$_SESSION['user_id'] .'Error_Logging_In');
    }

}