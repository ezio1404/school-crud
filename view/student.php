<?php
session_start();

if($_SESSION){
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>School CRUD</title>
    <!-- <link rel="stylesheet" href="../node_modules/foundation-sites/dist/css/foundation.css"> -->
    <link rel="stylesheet" href="assets/css/bootstrap.css">
</head>
<body>
<?php
    include 'nav.php';
    ?>
    <div class="container-fluid">
    <table>
        <thead>
            <th> </th>
        </thead>
        <tbody>
            <tr>
            </tr>
        </tbody>
    </table>
    </div>
    <script src="assets/js/jquery-3.3.1.min.js"></script>
    <script src="assets/js/bootstrap.js"></script>
</body>
</html>
<?php
}
else{
    header("location:../index.php?Please_login");
}
?>