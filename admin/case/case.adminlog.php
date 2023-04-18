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

   Filename      : case.adminlog.php
   Author        : Technocrat (www.nuke-evolution.com)
   Version       : 1.0.1
   Date          : 06/08/2005 (dd-mm-yyyy)

   Notes         : Admin Tracker stores failed admin logins.
************************************************************************/

/*****[CHANGES]**********************************************************
-=[Base]=-
      PHP Patched                              v8.2.4       04/18/2023
-=[Mod]=-
      Admin Tracker                            v1.0.1       06/08/2005
 ************************************************************************/

if (!defined('ADMIN_FILE')) {
    die ('Illegal File Access');
}

switch($op) {
    case "viewadminlog":
    case "adminlog_ack":
    case "adminlog_clear":
        include(NUKE_ADMIN_MODULE_DIR.'adminlog.php');
    break;
}
