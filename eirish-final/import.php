<?php
// Load the database configuration file
include_once 'config.php';

if(isset($_POST["importSubmit"])){

    $filename=$_FILES["file"]["tmp_name"];

    if($_FILES["file"]["size"] > 0)
    {
        $file = fopen($filename, "r");
        $bug = 0;
        while (($getData = fgetcsv($file, 10000, ",")) !== FALSE)
        {
            $bug++ ;
            if($getData[0] !=''){
                $sql = "INSERT into attendancee (id,emp_id,name,dateTime,logType) 
                        values ('".$getData[0]."','".$getData[1]."','".$getData[2]."','".$getData[3]."','".$getData[4]."')";
                $result = mysqli_query($link, $sql);
            }
        }fclose($file);
    }
    {
        $qstring = '?status=succ';
        }
}

header("Location: attendance.php".$qstring);