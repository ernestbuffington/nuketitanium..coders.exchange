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

$at_adminpage = $_SERVER['PHP_SELF'];

if ($radminsuper == 1) {
    adminmenu("$at_adminpage?module=AutoTheme&op=main", "AutoTheme", "autotheme.gif");
}


