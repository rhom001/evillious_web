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
    // Define variables and set to empty values
    $uname = $passwd = $confirm = "";

    // Validates the data for data from POST.
    if($_SERVER["REQUEST_METHOD"] == "POST") {
        $uname = test_input($_POST["uname"]);
        $passwd = test_input($_POST["passwd"]);
        $confirm = test_input($_POST["confirm"]);
    }

    include 'form-valid.php';
?>
    <!-- Form for creating a new user. -->
    <form id="form-user-new" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
        <fieldset id="user-new">
            <label for="user">Username: </label>
            <input type="text" name="uname" id="user">
            <br />
            
            <label for="password">Password: </label>
            <input type="text" name="passwd" id="password">
            <br />
            
            <label for="confirm">Confirm Password: </label>
            <input type="text" name="confirm" id="confirm">        
        </fieldset>
        <input type="submit" value="Submit new user!">
    </form>
</main>

<footer>
<?php include 'footer.php' ?>
</footer>
</html>
