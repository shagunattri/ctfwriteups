<?php
function contains_substring($str1 , $str2) {
            return strpos($str1 , $str2) !== false;
    }

    $page = $_GET["XVigil"];
    if(contains_substring($page , "/var/www/html") && !contains_substring($page , "../..")) {
            include $page;
    }
?>