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
      PHP Patched                             v8.2.4       04/18/2023
 ************************************************************************/

if (!defined('ADMIN_FILE')) {
	die ("Access Denied");
}

global $dbhost,$dbuname,$dbpass,$dbname;

$servername = $dbhost;
$username = $dbuname;
$password = $dbpass;
$db = $dbname;

$conn = new mysqli($servername, $username, $password, $db);
if($conn->connect_error){
	echo "Connect Failed!<br>" . $conn->error;
}
//set your timezone , refer to php manual
date_default_timezone_set("Asia/Kuala_Lumpur");
