<?php
require_once "controller/controller.php";
require_once "controller/loginController.php";

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');


// lee la acción
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
} else {
    $action = 'home'; // acción por defecto si no envían
}

$params = explode('/', $action);

$Controller = new Controller();
$loginCOntroller = new LoginController();

// determina que camino seguir según la acción
switch ($params[0]) {
    case 'home': 
        $loginCOntroller->login(); 
        break;
    case 'create': 
    $Controller->create(); 
    break;
    case 'delete': 
        $Controller->delete($params[1]); 
        break;
    case 'update': 
        $Controller->update(); 
        break;
    //case 'view': 
        //    $Controller->view($params[1]); 
        //    break;
    case 'mostrareditar': 
        $Controller->mostrarEditar($params[1]); 
        break;
    case 'detail': 
        $Controller->detalles($params[1]); 
        break;
    case 'genero': 
        $Controller->genero(); 
        break;
    case 'inicio': 
        $Controller->inicio(); 
        break;
    default: 
        echo('404 Page not found'); 
    break;
}


?>