<?php
/*=======================================================================
 Nuke-Evolution Basic: Enhanced PHP-Nuke Web Portal System
 =======================================================================*/

/************************************************************************/
/* PHP-NUKE: Web Portal System                                          */
/* ===========================                                          */
/*                                                                      */
/* Copyright (c) 2002 by Francisco Burzi                                */
/* http://phpnuke.org                                                   */
/*                                                                      */
/* This program is free software. You can redistribute it and/or modify */
/* it under the terms of the GNU General Public License as published by */
/* the Free Software Foundation; either version 2 of the License.       */
/************************************************************************/
/*         Additional security & Abstraction layer conversion           */
/*                           2003 chatserv                              */
/*      http://www.nukefixes.com -- http://www.nukeresources.com        */
/************************************************************************/

/*****[CHANGES]**********************************************************
-=[Base]=-
      Nuke Patched                             v3.1.0       06/26/2005
 ************************************************************************/

/* Applied rules: Ernest Allen Buffington (TheGhost) 04/29/2023 5:37 PM
 * AddDefaultValueForUndefinedVariableRector (https://github.com/vimeo/psalm/blob/29b70442b11e3e66113935a2ee22e165a70c74a4/docs/fixing_code.md#possiblyundefinedvariable)
 * NullToStrictStringFuncCallArgRector
 */
 
if (!defined('MODULE_FILE')) {
   die('You can\'t access this file directly...');
}
if (!file_exists("includes/nukesentinel.php")) {
   if (stristr((string) $_SERVER['QUERY_STRING'],'%25')) redirect("index.php");
   }
$module_name = basename(dirname(__FILE__));
get_lang($module_name);
$pagetitle = "- "._RECOMMEND."";

if (!is_user()) {
    redirect("modules.php?name=$module_name&file=article&sid=$sid");
    exit;
}

function FriendSend($sid) {
    $yn = null;
    $ye = null;
    global $user, $cookie, $prefix, $db, $user_prefix, $module_name;
    $sid = intval($sid);
    if(!isset($sid)) { exit(); }
    include_once(NUKE_BASE_DIR."header.php");
    $row = $db->sql_fetchrow($db->sql_query("SELECT title FROM ".$prefix."_stories WHERE sid='$sid'"));
    $title = stripslashes((string) check_html($row["title"], "nohtml"));
    title('FRIEND');
    OpenTable();
    echo "<center><span class=\"content\"><strong>"._FRIEND."</strong></span></center><br /><br />"
        .""._YOUSENDSTORY." <strong>$title</strong> "._TOAFRIEND."<br /><br />"
        ."<form action=\"modules.php?name=$module_name&amp;file=friend\" method=\"post\">"
        ."<input type=\"hidden\" name=\"sid\" value=\"$sid\">";
    if (is_user()) {
        $row2 = $db->sql_fetchrow($db->sql_query("SELECT name, username, user_email FROM ".$user_prefix."_users WHERE user_id = '".intval($cookie[0])."'"));
        $yn = stripslashes((string) $row2["name"]);
        $ye = stripslashes((string) $row2["user_email"]);
    }
    echo "<strong>"._FYOURNAME." </strong> <input type=\"text\" name=\"yname\" value=\"$yn\"><br /><br />\n"
        ."<strong>"._FYOUREMAIL." </strong> <input type=\"text\" name=\"ymail\" value=\"$ye\"><br /><br /><br />\n"
        ."<strong>"._FFRIENDNAME." </strong> <input type=\"text\" name=\"fname\"><br /><br />\n"
        ."<strong>"._FFRIENDEMAIL." </strong> <input type=\"text\" name=\"fmail\"><br /><br />\n"
        ."<input type=\"hidden\" name=\"op\" value=\"SendStory\">\n"
        . security_code(array(7), 'stacked', 1)
        ."<br /><input type=\"submit\" value="._SEND.">\n"
        ."</form>\n";
    CloseTable();
    @include_once('footer.php');
}

function SendStory($sid, $yname, $ymail, $fname, $fmail) {
    global $sitename, $nukeurl, $prefix, $db, $module_name;

    if (!security_code_check($_POST['gfx_check'], 'force')) {
        include_once(NUKE_BASE_DIR."header.php");
        OpenTable();
        echo '<center>'._GFX_FAILURE.'</center>';
        CloseTable();
        include_once(NUKE_BASE_DIR.'footer.php');
        exit;
    }
    $fname = stripslashes((string) removecrlf($fname));
    $fmail = stripslashes((string) removecrlf($fmail));
    $yname = stripslashes((string) removecrlf($yname));
    $ymail = stripslashes((string) removecrlf($ymail));
    $sid = intval($sid);
    $row = $db->sql_fetchrow($db->sql_query("SELECT title, time, topic FROM ".$prefix."_stories WHERE sid='$sid'"));
    $title = stripslashes((string) check_html($row["title"], "nohtml"));
    $time = $row["time"];
    $topic = intval($row["topic"]);
    $row2 = $db->sql_fetchrow($db->sql_query("SELECT topictext FROM ".$prefix."_topics WHERE topicid='$topic'"));
    $topictext = stripslashes((string) check_html($row2["topictext"], "nohtml"));
    $subject = ""._INTERESTING." $sitename";
    $message = ""._HELLO." $fname:\n\n"._YOURFRIEND." $yname "._CONSIDERED."\n\n\n$title\n("._FDATE." $time)\n"._FTOPIC." $topictext\n\n"._URL.": $nukeurl/modules.php?name=$module_name&file=article&sid=$sid\n\n"._YOUCANREAD." $sitename\n$nukeurl";
    evo_mail($fmail, $subject, $message, "From: \"$yname\" <$ymail>\nX-Mailer: PHP/" . phpversion());
    $title = urlencode($title);
    $fname = urlencode($fname);
    redirect("modules.php?name=$module_name&file=friend&op=StorySent&title=$title&fname=$fname");
}

function StorySent($title, $fname) {
    include_once(NUKE_BASE_DIR."header.php");
    $title = htmlspecialchars(urldecode((string) check_html($title, "nohtml")));
    $fname = htmlspecialchars(urldecode((string) $fname));
    OpenTable();
    echo "<center><span class=\"content\">"._FSTORY." <strong>$title</strong> "._HASSENT." $fname... "._THANKS."</span></center>";
    CloseTable();
    @include_once("footer.php");
}

switch($op) {

    case "SendStory":
    SendStory($sid, $yname, $ymail, $fname, $fmail);
    break;

    case "StorySent":
    StorySent($title, $fname);
    break;

    case "FriendSend":
    FriendSend($sid);
    break;

}

?>