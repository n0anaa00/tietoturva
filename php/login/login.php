<?php

require_once '../../inc/functions.php';
require_once '../../inc/headers.php';


if (isset($_SERVER['PHP_AUTH_USER'])) {
    
    if (checkUser(openDb(), $_SERVER['PHP_AUTH_USER'], $_SERVER["PHP_AUTH_PW"])) {

        $payload = array(
            "iat" => time(),
            "sub" => $_SERVER['PHP_AUTH_USER']
        );

        $jw = JWT::encode($payload, base64_encode('mysecret'), 'HS256');

        echo  json_encode(array("info" => "Kirjautuminen onnistui!", "token" => $jw));
        header('Content-Type: application/json');
        exit;
    }
}

echo '{"info":"Väärä salasana tai käyttäjätunnus"}';
header('Content-Type: application/json');
header('HTTP/1.1 401');
exit;
