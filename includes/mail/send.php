<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    
    if ($_POST) {
        $recipient = "hayden.burnell2@gmail.com";
        $subject = 'Email from site';
        $visitor_name = "";
        $visitor_email = "";
        $message = "";
        $fail = array();
    
        if (isset($_POST['firstname']) && !empty($_POST['firstname'])) {
            $visitor_name .= filter_var($_POST['firstname'], FILTER_SANITIZE_STRING);
        }else{
            array_push($fail, "firstname");
        }
        if (isset($_POST['lastname']) && !empty($_POST['lastname'])) {
            $visitor_name .= filter_var($_POST['lastname'], FILTER_SANITIZE_STRING);
        }else{
            array_push($fail, "lastname");
        }
    
        if (isset($_POST['email']) && !empty($_POST['email'])) {
            $email = str_replace(array("\r", "\n", "%0a", "%0d"), '', $_POST['email']);
            $email = filter_var($email, FILTER_VALIDATE_EMAIL);
        }else{
            array_push($fail, "email");
        }
    
        if (isset($_POST['message']) && !empty($_POST['message'])) {
            $clean = filter_var($_POST['message'], FILTER_SANITIZE_STRING);
            //Converts special characters to html entities (helps stop XSS)
            $message = htmlspecialchars($clean);
        }else{
            array_push($fail, "message");
        }
    
        /*
        It is an in-built function of PHP, which is used to insert the HTML line breaks before all newlines in the string. Although, we can also use PHP newline character \n or \r\n inside the source code to create the newline, but these line breaks will not be visible on the browser.
        */
    
        $headers = "From: " .$visitor_name. "\r\n" . "Reply-To: " .$visitor_email. "\r\n" ."X-Mailer: PHP/" .phpversion();

        
        if (count($fail)==0) {
            //echo count($fail);
            mail($recipient, $subject, $message, $headers);
           
            $results['message'] = sprintf('Thank you for contacting us, %s. You will get a reply within 24 hours', $visitor_name);
        } else {
            // Using this as a response message witha  custom code to grab with JS.
            header('HTTP/1.1 488 You Did NOT fill out the form correctly');
            die(json_encode(["message" => $fail]));
        }
    } else {
        $results['message'] = 'No submission';
    }
    
    echo json_encode($results);