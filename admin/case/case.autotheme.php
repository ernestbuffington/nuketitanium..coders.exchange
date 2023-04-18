<?php
/************************************************************************/
/* PHP-NUKE: Advanced Content Management System (Titanium Edition)      */
/* ============================================                         */
/*                                                                      */
/* Copyright (c) 2002 by Francisco Burzi                                */
/* http://phpnuke.org                                                   */
/*                                                                      */
/* This program is free software. You can redistribute it and/or modify */
/* it under the terms of the GNU General Public License as published by */
/* the Free Software Foundation; either version 2 of the License.       */
/************************************************************************/

/*****[CHANGES]**********************************************************
-=[Base]=-
      PHP Patched                              v8.2.4       04/18/2023
 ************************************************************************/

if(!isset($_REQUEST['module']))
$_REQUEST['module'] = '';

switch ($_REQUEST['op']) {

    case "autotheme":
    	$_REQUEST['op'] = "main";
    	$_REQUEST['module'] = "AutoTheme";
        
    default:
    	if ($_REQUEST['module'] == "AutoTheme") {
        	include("modules/AutoTheme/admin.php");
        	$func = "AutoTheme_admin_".$_REQUEST['op'];
        	$vars = array_merge($_GET, $_POST);
        	$func($vars);
    	}
    	break;
}
