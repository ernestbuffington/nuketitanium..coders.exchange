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
      Adopted Evolution Log Functions          v1.5.1       04/18/2023
-=[Mod]=-
	  Adopted Arcade Mod                       v3.0.3       04/18/2023
      Adopted Lock Modules Mod                 v1.0.1       04/18/2023
      Adopted Portal Banner Ads Mod            v3.0.1       04/18/2023
      Adopted Network Banner Ads Mod           v3.0.1       04/18/2023
 ************************************************************************/

define('HOME_FILE', true);

define('MODULE_FILE', true);

$_SERVER['PHP_SELF'] = 'modules.php';

require_once(__DIR__.'/mainfile.php');

# Mod: Banner Ads v3.0.1
global $prefix, $db, $admin_file, $httpref, $httprefmax, $module_name;

if (isset($_GET['op']) && $_GET['op'] == 'ad_click'):

	if($_GET['op'] == 'ad_click' && isset($_GET['bid'])):
        $bid = intval($_GET['bid']);
        
        [$clickurl] = $db->sql_ufetchrow("SELECT `clickurl` FROM `".$prefix."_banner` WHERE `bid`='$bid'", SQL_NUM);

        if(!is_admin()):
        $db->sql_query("UPDATE `".$prefix."_banner` SET `clicks`=clicks+1 WHERE `bid`='$bid'");
		endif;

        redirect($clickurl);
	else: 
        exit('Illegal Operation');
    endif;
	
endif;

# Mod: Network Banner Ads v3.0.1
global $dbhost2, $dbname2, $dbuname2, $db2, $network_prefix; 

if (isset($_GET['op']) && $_GET['op'] == 'ad_network_click'):
    
	if($_GET['op'] == 'ad_network_click' && isset($_GET['bid'])):
        $bid = intval($_GET['bid']);
    
	    [$clickurl] = $db2->sql_ufetchrow("SELECT `clickurl` FROM `".$network_prefix."_banner` WHERE `bid`='$bid'", SQL_NUM);
    
	    if(!is_admin()):
          $db2->sql_query("UPDATE `".$network_prefix."_banner` SET `clicks`=clicks+1 WHERE `bid`='$bid'");
		endif;
        redirect($clickurl);
		
	else: 
        exit('Illegal Operation');
    endif;
	
endif;
  
# Mod: Arcade v3.0.3
// Arcade MOD - IBProSupport
$arcade = get_query_var('act', 'get');
$newscore = get_query_var('do', 'get');

if($arcade == 'Arcade' && $newscore='newscore'):
	 $gamename = str_replace("\'","''",$_POST['gname']);
     $gamename = preg_replace(['#&(?!(\#[0-9]+;))#', '#<#', '#>#'], ['&amp;', '&lt;', '&gt;'],$gamename);
     $gamescore = intval($_POST['gscore']);
      //Get Game ID
      $row = $db->sql_ufetchrow("SELECT `game_id` FROM `".$prefix."_bbgames` WHERE `game_scorevar`='$gamename'");
      $gid = intval($row['game_id']);

      $ThemeSel = get_theme();
      print '<link rel="StyleSheet" href="themes/"'.$ThemeSel.'"/style/style.css">'."\n";
      print '<form method="post" name="ibpro_score" action="modules.php?name=Forums&amp;file=proarcade&amp;valid=X&amp;gpaver=GFARV2">'."\n";
      print '<input type=hidden name="vscore" value="'.$gamescore.'">'."\n";
      print '<input type=hidden name="gid" value="'.$gid.'">'."\n";
      print '</form>'."\n";

      print '<script>'."\n";
      print 'window.onload = function(){document.forms["ibpro_score"].submit()}'."\n";
      print '</script>'."\n";
exit;

endif;
 
if (isset($_GET['url']) && is_admin()):
  redirect($_GET['url']);
endif;

$module_name = main_module();

# Mod: Lock Modules v1.0.1
global $lock_modules;
if(($lock_modules && $module_name != 'Your_Account') && !is_admin() && !is_user()): 
  include(NUKE_MODULES_DIR.'Your_Account/index.php');
endif;

$mop = (!isset($mop)) ? 'modload' : trim($mop);
$mod_file = (!isset($mod_file)) ? 'index' : trim($mod_file);
$file = (isset($_REQUEST['file'])) ? trim($_REQUEST['file']) : 'index';

if(!isset($modpath)): 
  $modpath = ''; 
endif;

if(stristr($file,"..") || stristr($mod_file,"..") || stristr($mop,"..")):
    # Base: Evolution Functions v1.5.1
    log_write('error', 'Inappropriate module path was used', 'Hack Attempt');
    die("You are so cool...");
else:
    $module = $db->sql_ufetchrow('SELECT `blocks` FROM `'.$prefix.'_modules` WHERE `title`="'.$module_name.'"');
	$modpath = NUKE_MODULES_DIR.$module_name."/$file.php";
	
	if (file_exists($modpath)):
	
		$showblocks = $module['blocks'];
		unset($module, $error);
		require($modpath);
    
	else:
        DisplayError((is_admin()) ? "<strong>"._HOMEPROBLEM."</strong><br /><br />[ <a href=\"".$admin_file.".php?op=modules\">"._ADDAHOME."</a> ]" : _HOMEPROBLEMUSER);
    endif;
endif;
