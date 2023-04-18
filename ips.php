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

/************************************************************************
   Nuke-Evolution: Advanced Content Management System
   ============================================
   Copyright (c) 2005 by The Nuke-Evolution Team

   Filename      : ips.php
   Author        : Technocrat (www.nuke-evolution.com)
   Version       : 1.1.0
   Date          : 11/21/2005 (dd-mm-yyyy)

   Notes         : Should contain the IPs for the admin ip lock & user lock
************************************************************************/

if (realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])) {
    exit('Access Denied');
}

global $ips, $users_ips;

/*****[BEGIN]******************************************
 [ Mod:    Admin IP Lock                       v2.1.1 ]
 ******************************************************/

// IPs that are used to allowed access to admin.php and forum admin; all others will be denied
// Seperate all IPs by a comma.
// ex: $ips = array('127.0.0.1', '192.168.1.1');

/*=====
  For more information on how to use this please see the help file in the help/features folder
  =====*/

//$ips = array('xxx.xxx.xxx.xxx');

/*****[END]********************************************
 [ Mod:    Admin IP Lock                       v2.1.1 ]
 ******************************************************/

/*****[BEGIN]******************************************
 [ Mod:     User IP Lock                       v1.0.1 ]
 ******************************************************/

// IPs that are allowed to login to the specified user accounts
// Seperate all IPs by a comma inside the second ''.
// ex: $users_ips = array('Technocrat', '127.0.0.1,192.168.1.1');

/*=====
  For more information on how to use this please see the help file in the help/features folder
  =====*/

//$users_ips = array('name', 'xxx.xxx.xxx.xxx');

/*****[END]********************************************
 [ Mod:     User IP Lock                       v1.0.1 ]
 ******************************************************/
