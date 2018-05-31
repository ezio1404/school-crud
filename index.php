<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>School CRUD</title>
    <!-- <link rel="stylesheet" href="../node_modules/foundation-sites/dist/css/foundation.css"> -->
    <link rel="stylesheet" href="view/assets/css/bootstrap.css">
</head>
<body>

    <div class="container">
    <form action="controller/loginController/logController.php" method="post">
        <input type="number" name="idno" id="idno" placeholder="IDNO">
        <input type="password" name="pass" id="pass" placeholder= "*******">
        <label for="Student">Student</label>
        <input type="radio" name="type" id="Student" value="student" checked>
        <label for="Professor">Professor</label>
        <input type="radio" name="type" id="Professor" value="professor">
        <input type="submit" value="Login" name="login" >
    </form>
    </div>
    <script src="view/assets/js/jquery-3.3.1.min.js"></script>
    <script src="view/assets/js/bootstrap.js"></script>
</body>
</html>