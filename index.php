<?php
    define ('DS', DIRECTORY_SEPARATOR);
    define ('HOME', dirname(__FILE__));

    ini_set ('display_errors', 1);

    // require helper functions to be used in other scripts.
	require_once HOME . DS . 'utilities' . DS . 'helpers.php';
	
    // Use config.php where it exists.
	if (file_exists(HOME . DS . 'config.php' )) {
        require_once HOME . DS . 'config.php';
    } else {
        // config.php not found. Use ENV.
        define ('DB_HOST',  $_ENV['DB_HOST']);
        define ('DB_NAME',  $_ENV['DB_NAME']); 
        define ('DB_USER',  $_ENV['DB_USER']);   
        define ('DB_PASS',  $_ENV['DB_PASS']); 
    }
    //require_once HOME . DS . 'config.php';
    require_once HOME . DS . 'utilities' . DS . 'bootstrap.php';

    function __autoload($class) {        
        if (file_exists(HOME . DS . 'utilities' . DS . strtolower($class) . '.php')) {
            require_once HOME . DS . 'utilities' . DS . strtolower($class) . '.php';
        } else if (file_exists(HOME . DS . 'models' . DS . strtolower($class) . '.php')) {
            require_once HOME . DS . 'models' . DS . strtolower($class) . '.php';
        } else if (file_exists(HOME . DS . 'controllers' . DS . strtolower($class) . '.php')) {
            require_once HOME . DS . 'controllers'  . DS . strtolower($class) . '.php';
        }
    }

?>