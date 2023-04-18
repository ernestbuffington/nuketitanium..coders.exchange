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

/************************************************************************
   Nuke-Evolution: Cache Admin Panel
   ============================================
   Copyright (c) 2005 by The Nuke-Evolution Team
  
   Filename      : links.cache.php
   Author        : JeFFb68CAM (www.Evo-Mods.com)
   Version       : 1.0.2
   Date          : 11.11.2005 (mm.dd.yyyy)
                                                                        
   Notes         : Allows admin to easily manage the built-in cache.
************************************************************************/

if (!defined('ADMIN_FILE')) {
   die ('Illegal File Access');
}

global $admin_file;

if ($radminsuper==1) {
    adminmenu($admin_file.'.php?op=cache', "Cache", 'cache.png');
}
