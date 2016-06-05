<?php
    // Function for cleaning up input.
    function test_input($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        echo $data;
        return $data;
    }
?>
