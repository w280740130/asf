<?php

class worker_conf{
    public static $config=array(
        'log_level' => DEBUG,
        'mysql' => array(
            'socket' => '/tmp/mysql.sock',
            'host' => 'localhost',
            'port' => 3306,            
            'user' => 'root',
            'password' => 'cpyf',
            'database' => 'test',
            'charset' => 'utf8',
        ),
        'route' => [
            //_handler.* 控制器为底层通用控制器，会根据具体的controller/action进行再次分发

//            ['PUT', '/user/{number}/{id:\d+}',              'index.index'],
//            ['GET', '/{controller}/{number}/{id:\d+}',    '_handler.controller_param'],
//            ['GET', '/{controller}/{number}',             '_handler.controller_param'],
//            ['POST', '/{controller}/{number}/{id:\d+}',   '_handler.controller_param'],
//            ['DELETE', '/{controller}/{number}/{id:\d+}', '_handler.controller_param'],

            /*下面这三条规则，由底层填加到算定义规则的后面
            ['POST', '/{controller}/{action}[/]',        '_handler.controller_action'],
            ['POST', '/{controller}[/]',                 '_handler.controller'],         
            [['GET','POST'], '/{controller}/{param:.+}', '_handler.controller_param'],
             */
        ],
    );
}
