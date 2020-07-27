<?php
function getItems(){   //$action == 'getItems'

    include('conexao.php');

    $sql = "SELECT * FROM items";

    $go = $mysqli->query($sql);

    $return = array();

    while($result = $go->fetch_assoc()){

        $return[] = $result;

    }

    return (json_encode($return));

}

function getItem($id){ //$action == 'getItem'

    include('conexao.php');

    $sql = "SELECT * FROM items WHERE id = $id";

    $go = $mysqli->query($sql);

    $return = array();

    while($result = $go->fetch_assoc()){

        $return[] = $result;

    }

    return (json_encode($return));

}


function getCat($cat){ //$action == 'getCat'
    include('conexao.php');

    $sql = "SELECT * FROM items WHERE categoria = '$cat'";

    $go = $mysqli->query($sql);

    $return = array();

    while($result = $go->fetch_assoc()){

        $return[] = $result;

    }

    return (json_encode($return));
}


?>