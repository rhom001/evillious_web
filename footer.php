<?php
    $mydate=getDate(date("U"));
    
    echo "<p>Evillious Chronicles Library at Xelepheis
    &copy;2016-$mydate[year]<br />
    $mydate[weekday] $mydate[month] $mydate[mday], $mydate[year] &ndash; $mydate[hours]:$mydate[minutes]";
?>
