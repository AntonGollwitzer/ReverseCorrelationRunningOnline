<?php
if(isset($_POST['submit'])){

    //collect form data
    $name = $_POST['name'];
    $email = $_POST['email'];
    $dropdown = $_POST['DropDown'];

    //check name is set
    if($name ==''){
        $error[] = 'Name is required';
    }

    //check for a valid email address
    if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
         $error[] = 'Please enter a valid email address';
    }

    //if no errors carry on
    if(!isset($error)){

        # Title of the CSV
        $Content = "Name, Email, DropDown\n";

        //set the data of the CSV
        $Content .= "$name, $email,$dropdown\n";

        # set the file name and create CSV file
        $FileName = "formdata-".date("d-m-y-h:i:s").".csv";
        header('Content-Type: application/csv'); 
        header('Content-Disposition: attachment; filename="' . $FileName . '"'); 
        echo $Content;
        exit();
    }
}

//if their are errors display them
if(isset($error)){
    foreach($error as $error){
        echo "<p style='color:#ff0000'>$error</p>";
    }
}
?> 