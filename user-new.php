<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>EC Library | New User</title>
</head>

<body>
<header>
<?php include 'menu.php' ?>
    <h1>Create a New User</h1>
</header>

<main>
<?php
    //include 'form-valid.php';
    // Function for cleaning up input.
    function test_input($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
    // Define variables and set to empty values
    $uname = $passwd = $confirm = "";
    
    // Validates the data for data from POST.
    if($_SERVER["REQUEST_METHOD"] == "POST") {
        if(empty($_POST["uname"])) {
            $unameErr = "Username is required.";
        } else {
            $uname = test_input($_POST["uname"]);
        }
        
        if(empty($_POST["passwd"])) {
            $passwdErr = "A password is required!";
        } else {
            $passwd = test_input($_POST["passwd"]);
        }
        
        if(empty($_POST["confirm"])) {
            $confirmErr = "This does not match the password above.";
        } else {
            $confirm = test_input($_POST["confirm"]);
        }
    }
?>
    <!-- Form for creating a new user. -->
    <form id="form-user-new" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
        <fieldset id="user-new">
            <label for="user">Username: </label>
            <input type="text" name="uname" id="user">
            <span class="error error-form">* <?php echo $unameErr; ?></span>
            <br><br>
            
            <label for="password">Password: </label>
            <input type="text" name="passwd" id="password">
            <span class="error error-form">* <?php echo $passwdErr; ?></span>
            <br><br>
            
            <label for="confirm">Confirm Password: </label>
            <input type="text" name="confirm" id="confirm">
            <span class="error error-form">* <?php echo $confirmErr; ?></span>
        </fieldset>
        <input type="submit" value="Submit new user!">
    </form>
</main>

<footer>
<?php include 'footer.php' ?>
</footer>
</html>
