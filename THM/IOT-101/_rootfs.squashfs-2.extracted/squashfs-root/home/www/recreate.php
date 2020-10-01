<?php
        
        session_start();
        if($_GET['username']=='admin'){
        @unlink('/tmp/sessionid');
	session_destroy();
        session_start();
        $_SESSION['username']=$_GET['username'];
        @$fp = fopen('/tmp/sessionid', 'w');
	fwrite($fp,session_id().','.$_SERVER['REMOTE_ADDR']);
	fclose($fp);
	echo 'recreateok';
      }
     else {
         header('location:index.php');
     }     
      
?>
