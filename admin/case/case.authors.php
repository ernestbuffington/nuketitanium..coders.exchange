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

if (!defined('ADMIN_FILE')) {
    die ('Illegal File Access');
}

switch($op) {
    case "mod_authors":
    case "modifyadmin":
    case "UpdateAuthor":
    case "AddAuthor":
    case "deladmin2":
    case "deladmin":
    case "assignstories":
    case "deladminconf":
        include(NUKE_ADMIN_MODULE_DIR.'authors.php');
    break;
}
