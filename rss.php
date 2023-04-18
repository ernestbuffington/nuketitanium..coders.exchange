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

   Filename      : rss.php
   Author        : Quake (www.php-nuke-titanium.86it.us)
   Version       : 2.5.0
   Date          : 02/05/2006 (dd-mm-yyyy)

   Notes         : This file loads the RSS files and prints them to screen
************************************************************************/

/*****[CHANGES]**********************************************************
-=[Base]=-
      PHP Patched                              v8.2.4       08/18/2023
-=[Mods]=-
      RSS Improvements                         v3.0.0       12/07/2006
 ************************************************************************/

define('RSS_FEED', true);
define('NO_SENTINEL', true);
define('NO_SECURITY', true);

require_once(dirname(__FILE__) . '/mainfile.php');
include_once(NUKE_INCLUDE_DIR.'counter.php');
include_once(NUKE_RSS_DIR.'functions.php');

if(isset($feed) && !preg_match("/[\W]/i", $feed)) {
  $feed = htmlentities(addslashes($feed));
  if(file_exists(NUKE_RSS_DIR.$feed.'.php')) {
    include_once(NUKE_RSS_DIR.$feed.'.php');
  } else {
    exit(_NORSS);
  }
} else {
  include_once(NUKE_RSS_DIR.'news.php');
}

?>