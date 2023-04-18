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
   Nuke-Evolution: Cache Admin Panel
   ============================================
   Copyright (c) 2005 by The Nuke-Evolution Team

   Filename      : case.cache.php
   Author        : JeFFb68CAM (www.Evo-Mods.com)
   Version       : 1.0.2
   Date          : 11.11.2005 (mm.dd.yyyy)

   Notes         : Allows admin to easily manage the built-in cache.
************************************************************************/

/*****[CHANGES]**********************************************************
-=[Base]=-
      PHP Patched                              v8.2.4       04/18/2023
 ************************************************************************/

if (!defined('ADMIN_FILE')) {
    die ('Illegal File Access');
}

switch($op) {
    case "cache_delete":
    case "cache_view":
    case "cache_clear":
    case "usrclearcache":
    case "howto_enable_cache":
    case "cache":
        include(NUKE_ADMIN_MODULE_DIR.'cache.php');
    break;
}
