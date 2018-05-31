<?php

if(isset($_POST['logout'])){
session_destroy();
unset($_SESSION['user_id']);
unset($_SESSION['user_info']);
unset($_SESSION['user_type']);
header("location:../../index.php");
}
?>