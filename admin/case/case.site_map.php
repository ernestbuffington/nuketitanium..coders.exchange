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

/************************************************************************/
/* NukeJMap [Site_Map]    4.0 by z3rb                                   */
/* =================================                                    */
/* Copyright (c) 2006 by Techgen                                        */
/* http://www.techg3n.net                                               */
/************************************************************************/

/*****[CHANGES]**********************************************************
-=[Base]=-
      PHP Patched                              v8.2.4       04/18/2023
 ************************************************************************/

if ( !defined('ADMIN_FILE') )
{
    die ("Access Denied");
}

switch ($op) {
    case 'site_map':
        include(NUKE_ADMIN_MODULE_DIR.'site_map.php');
    break;
}
