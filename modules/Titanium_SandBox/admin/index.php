<?php
if (!defined('ADMIN_FILE')) {
   die ("Illegal File Access");
}

global $prefix, $db, $admin_file, $admdata;
$module = basename(dirname(dirname(__FILE__)));

if (!is_mod_admin($module)) {
    echo "Access Denied";
    die();
}

define('PHP_NUKE_SANDBOX', dirname(dirname(__FILE__)) . '/');
define('PHP_NUKE_SANDBOX_ADDONS', PHP_NUKE_SANDBOX . '/addons/');
define('PHP_NUKE_SANDBOX_ADMIN', dirname(__FILE__) . '/');
define('PHP_NUKE_SANDBOX_ADMIN_INCLUDES', PHP_NUKE_SANDBOX_ADMIN . 'includes/');
define('PHP_NUKE_SANDBOX_ADMIN_LANG', PHP_NUKE_SANDBOX . 'admin/language/');
define('PHP_NUKE_SANDBOX_ADMIN_INSTALL', PHP_NUKE_SANDBOX . 'admin/install/');

include_once(PHP_NUKE_SANDBOX_ADMIN_LANG . 'lang-english.php');
global $data_file;
$data_file = PHP_NUKE_SANDBOX_ADMIN_INSTALL.'data.txt';
include_once(PHP_NUKE_SANDBOX_ADMIN_INSTALL . 'functions.php'); 
include_once(PHP_NUKE_SANDBOX_ADMIN_INCLUDES . 'functions.php');

include(NUKE_BASE_DIR.'header.php');

if(is_mod_admin($module)) 
{

  switch ($op) 
  {
   default:
   OpenTable();
   serverinfo();
		case_menu($admin_file.'.php?op=fixbots','Fix Bots - Set Bots to Ghost Mode', 'content.png');
		//case_menu($admin_file.'.php?op=step2','PHP-Nuke Titanium CHMOD File/Folder Check', 'content.png');
        CloseTable();
		break;
  case 'fixbots':
  OpenTable();
  
  // update bots, set them all to Ghost mode.
  $sql="UPDATE `nuke_users` SET 
  `user_allow_viewonline`='0' WHERE user_avatar='' ";
  $result=$db->sql_query($sql);
  
  CloseTable();
  break;
  case 'step2';
    OpenTable();
    CloseTable();
  break;
  case 'step3';
    OpenTable();
	echo 'TEST';
    CloseTable();
  break;
  case 'c':
  break;
  case 'd':
  break;
  case 'e':
  break;
  case 'f':
  break;
  case 'g':
  break;
  case 'h':
  break;
  case 'i':
  break;
  case 'j':
  break;
  case 'k':
  break;
  case 'l':
  break;
  case 'm':
  break;
  case 'n':
  break;
  case 'o':
  break;
  case 'p':
  break;
  case 'q':
  break;
  case 'r':
  break;
  case 's':
  break;
  case 't':
  break;
  case 'u':
  break;
  case 'v':
  break;
  case 'w':
  break;
  case 'x':
  break;
  case 'y':
  break;
  case 'z':
  break;
 }

 include(NUKE_BASE_DIR.'footer.php');

} 
else 
{
  DisplayError('<strong>Some Bad Shit Just Happened</strong><br /><br />' . _NO_ADMIN_RIGHTS . $pnt_module);
}

?>