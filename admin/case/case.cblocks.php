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

/********************************************************/
/* NSN Center Blocks                                    */
/* By: NukeScripts Network (webmaster@nukescripts.net)  */
/* http://nukescripts.86it.us                           */
/* Copyright � 2000-2005 by NukeScripts Network         */
/* Ported for Nuke-Evolution by Quake                   */
/* http://www.evo-mods.com                              */
/********************************************************/
/* Original by: Richard Benfield                        */
/* http://www.benfield.ws                               */
/********************************************************/

/*****[CHANGES]**********************************************************
-=[Base]=-
      PHP Patched                              v8.2.4       04/18/2023
 ************************************************************************/

if(!defined('ADMIN_FILE')) {
    exit('Access Denied');
}

switch($op) {
  case "CenterBlocksAdmin":
  case "CenterBlocksLoadError":
  case "CenterBlocksSave1":
  case "CenterBlocksSave2":
  case "CenterBlocksSave3":
  case "CenterBlocksSave4":
  case "CenterBlocksSet1":
  case "CenterBlocksSet2":
  case "CenterBlocksSet3":
  case "CenterBlocksSet4":
  include(NUKE_ADMIN_MODULE_DIR."cblocks.php");
  break;
}
