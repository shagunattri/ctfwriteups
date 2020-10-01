<?php
//added sessionid check to restrict user download config/logs/pcp at logout.
 if(file_exists('/tmp/sessionid')) {
//                      return true;

if (empty($_REQUEST['file'])) {
	$filename='/var/config';
}
else {
	if ($_REQUEST['file'] == 'log'){
            if ($_REQUEST['product'] == 'aries')
                $filename = '/tmp/log/messages';
            else
                $filename = '/var/log/messages';

        }
	else if ($_REQUEST['file'] == 'config')
		$filename = '/var/config';
	else if ($_REQUEST['file'] == 'pcap')
		$filename = '/tmp/capture.pcap';
}

$targetFile = basename($filename);


    header('Content-Description: File Transfer');
    header('Content-Type: application/force-download');
    header('Content-Disposition: attachment; filename='.basename($filename));
    header('Content-Transfer-Encoding: binary');
    header('Expires: 0');
    header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
    header('Pragma: public');
    header('Content-Length: ' . filesize($filename));
    header( "x-lighttpd-send-file: " . $filename);
    $total     = filesize($filename);
    $sent      = 0;
    $blocksize = (2 << 13);
    $handle    = fopen($filename, "rb");

    // Now we need to loop through the file
    // AND echo out chunks of file data
    WHILE(!feof($handle)){
    ob_start();
        echo fread($handle, $blocksize);
        ob_end_flush();
        usleep(100000);
    }
}
	else{ 
	ob_start(); 
	header("Location: index.php");
	ob_end_flush();
	}
exit(0);
?>
