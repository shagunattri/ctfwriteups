<?php
// include('checkSession.php');
  function checkSessionLink()
	{
		if(file_exists('/tmp/sessionid')) {
			return true;
		}
		else {
			return false;
		}
	}

	function checkSessionExpired()
	{
		if (checkSessionLink()) {
			$sd = explode(',',@file_get_contents('/tmp/sessionid'));
                        if ($sd[0] != session_id() || (time()-@filemtime('/tmp/sessionid'))>300)
				return true;
			else 
				return false;
		}
		else
			return true;
	}
 
    session_start();     
    if (checkSessionExpired()) {
          @header('location:index.php');
       }
    else if($_SESSION['username']=='admin'){
           $filename='/var/config'; // my own function included here
           header('Content-type: application/octet-stream');
           header("Content-Disposition: attachment; filename=\"config\"");
           readfile($filename);
       }
?>