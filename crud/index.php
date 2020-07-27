<?php

header('Content-Type: application/json');

include('actions.php');
include('items.php');



switch ($action){
    case "getItems":    

        print_r(getItems());

    break;

    case "getItem":    

        print_r(getItem($id));

    break;

    case "getCat": 

        print_r(getCat($cat));
    break;
}





?>