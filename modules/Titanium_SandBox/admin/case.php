<?php
if (!defined('ADMIN_FILE')) {
   exit('THIS FILE WAS NOT CALLED WITHIN ADMINISTRATION');
}

$module = basename(dirname(dirname(__FILE__)));
get_lang($module);

$op = $_GETVAR->get('op', 'request', 'string');

switch($op) 
{
	case 'TitaniumSandboxMenu';
    case 'fixbots';
    case 'step1';
    case 'step2';
	case 'a':
    case 'b':
    case 'c':
    case 'd':
    case 'e':
    case 'f':
    case 'g':
    case 'h':
    case 'i':
    case 'k':
    case 'l':
    case 'm':
    case 'n':
    case 'o':
    case 'p':
    case 'q':
    case 'r':
    case 's':
    case 't':
    case 'u':
    case 'v':
    case 'w':
    case 'x':
    case 'y':
    case 'z':
        include(NUKE_MODULES_DIR.$module.'/admin/index.php');
    break;
}

?>