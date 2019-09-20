<?php
	$Data = $_GET['dataToFile'].PHP_EOL;
	$Data = explode("remove",$Data);
      $filename = $Data[0];
      $Handle = fopen($filename, 'a');
      fwrite($Handle, $Data[1]);
      fclose($Handle); 
?>