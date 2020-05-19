<?php
    // Set default values for controller, view, and query 
    // These will be used if 'load' is not set...
    $controller = "home";
    $action = "index";
    $query = null;
	
    // If 'load' is set, load the specified parameters for controller, view, and query
    if (isset($_GET['load'])) {
        $params = array();
        $params = explode("/", $_GET['load']);
        $controller = ucwords($params[0]);

        if (isset($params[1]) && !empty($params[1])) {
            $action = $params[1];
        }

        if (isset($params[2]) && !empty($params[2])) {
            $query = $params[2];
        }
    }

    // Create a new Controller object using the supplied parameters
    // e.g. $load = new NewsController('news', 'index');
    $modelName = $controller;
    $controller .= 'Controller';
    $load = new $controller($modelName, $action);
	
    // invoke method named after $action 
    // e.g. $load->index($query))
    if (method_exists($load, $action)) {
        $load->$action($query);
    } else {
        die('Invalid method. Please check the URL.');
    }

?>