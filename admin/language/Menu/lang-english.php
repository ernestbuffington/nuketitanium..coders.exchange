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
/* Titanium Portal Menu                                                 */
/* By: The 86it Developers Network                                      */
/* https://www.86it.us                                                  */
/* Copyright (c) 2019 Ernest Buffington                                 */
/************************************************************************/
define_once('_MENU_THANKS', '<br><br>Thanks for using this script. This mod was created by Ernest Allen Buffington, &copy; <a href="https://www.86it.us" target="_blank">The 86it Developers Network</a>.');
define_once('_MENU_INSTALL','I see that you don\'t have the Menu Tables installed yet!<br>With your permission, let us proceed to install the Menu Tables.<br>All you need to do is agree by checking the box below and clicking install, the script will do the rest.');
define_once('_MENU_INSTALL2','This is the auto install for the Portal Menu v5.01');
define_once('_MENU_INSTALL3','');
define_once('_MENU_INSTALLING', 'I am currently performing the database installation, please don\'t change the page while I am installing. This will take a moment!');
define_once('_MENU_COMPLETE', 'The installation is now complete. I will redirect you back to the module in a few moments.');
define_once('_MENU_INSERT_TABLE', 'Now we create the table.');
define_once('_MENU_INSERT_DATA', 'Now we insert the data.');
/*****[CHANGES]**********************************************************
-=[Base]=-
      Nuke Patched                             v3.1.0       06/26/2005
-=[Mod]=-
	  Titanium Patched                         v3.0.0       08/28/2019
 ************************************************************************/
define_once("_MENU_CATEGORIES","Menu Categories");
define_once("_MENU_IMGNEWTITLE","Click to Show/Hide the NEW icon");
define_once("_CLICK_TO_CHOOSE_IMAGE","Click to choose an image for this category");
define_once("_CLICK_TO_CHOOSE_IMAGECAT","Click to choose an image for this link");
define_once("_MENU_JSFIXFORIE1","The drop-down lists below disappear on Internet Explorer. This is NORMAL : it's a workaround to avoid an IE bug. For the sake of the web and a better internet experience, please use another browser (Opera, Firefox,...)");
define_once("_MENU_HIDE","Hide");
define_once("_MENU_MOVEUP","Click to move the link upwards");
define_once("_MENU_MOVEDOWN","Click to move the link downwards");
define_once("_MENU_REMOVESUBLEVEL","Click to remove this sublevel");
define_once("_MENU_ADDSUBLEVEL","Click to add a sublevel");
define_once("_MENU_SCHEDULETITLE","Schedule the display");
define_once("_MENU_SCHEDULE","Click to hide or schedule the display");
define_once("_MENU_TEXTONLY","Text without url");
define_once("_MENU_MONDAY","Monday");
define_once("_MENU_TUESDAY","Tuesday");
define_once("_MENU_WEDNESDAY","Wednesday");
define_once("_MENU_THURSDAY","Thursday");
define_once("_MENU_FRIDAY","Friday");
define_once("_MENU_SATURDAY","Saturday");
define_once("_MENU_SUNDAY","Sunday");
define_once("_MENU_DISPLAYFROM","Display from");
define_once("_MENU_DISPLAYTO","to");
define_once("_MENU_SCHEDULEIT","Schedule");
define_once("_MENU_DISPLAYONLYTHESEDAYS","Only on");
define_once("_MENU_SHOWADMIN","Extended Administrator view");
define_once("_ALWAYS_OPEN","Always open");
define_once("_MENU_CENTER25","Center");
define_once("_MENU__ADMIN_HEADER","PHP-Nuke Portal Menu :: Admin Panel");
define_once("_MENU__RETURNMAIN","Return to Main Administration");
define_once("_MENU","Portal Menu");
define_once("_MENU_ADMINTITLE","<strong>Administration Menu</strong>");
define_once("_MENU_MSGNOTNUM","The value of this field must be numeric, please modify.");
define_once("_MENU_MSGVOID","You must enter a value for this field !");
define_once("_MENU_WEIGHT","Weight");
define_once("_MENU_CATNAME","Category's name");
define_once("_MENU_IMGNAME","Image file's name");
define_once("_MENU_CATLINK","Link on this category");
define_once("_MENU_CATMODS","Modules in this category");
define_once("_MENU_NOIMG","[No image]");
define_once("_MENU_CENTER","Center title");
define_once("_MENU_BGCOLOR","Background color");
define_once("_MENU_EXTLINK","External link");
define_once("_MENU_MISEENPAGE","Display");
define_once("_TARGETBLANK","Open in a new window");
define_once("_MENU_ACTION","Action");
define_once("_MENU_SUPPR","[Delete]");
define_once("_MENU_ADDCAT","Add a new category");
define_once("_MENU_NEWCATEGORY","Add a new category :");
define_once("_MENU_CANCEL","RESET TEXT");
define_once("_MENU_POST","SAVE YOUR MODIFICATIONS");
define_once("_MENU_REMARKS","<strong>Remarks :</strong><br /><br />"
    ."- The WEIGHT is used to order categories (categories with a lower WEIGHT are displayed first). [number between 0 and 98]<br /><br />"
    ."- You can create a category without a name : in this case, the image will not be displayed.<br />"
    ."&nbsp;&nbsp;(useful if you are using only horizontal rules to separate categories)<br /><br />"
    ."- The IMAGE FILE'S NAME (for the category) is an image file inside /images/menu/. You can also put a FLASH file (.swf)."
    ."<br />&nbsp;&nbsp;The IMAGE (for category's content) is an image file inside /images/menu/categories/."
    ."<br />&nbsp;&nbsp;When you add an image file in these folders, it is automatically added in its list box.<br />"
    ."&nbsp;&nbsp;If you don't want to display an image before a category's name, put 'null.gif' (transparent 20x20 px image) in the field.<br /><br />"
    ."- THE LINK ON THE CATEGORY could be any internet url or an url relative to your site.<br />"
    ."&nbsp;&nbsp;If you put an external link (beginnning with 'http://' or 'ftp://'), the link will be opened in a new window.<br />"
    ."&nbsp;&nbsp;If you put a relative url ('modules.php?name=Your_Account&op=new_user'), the link will open in the current window.<br />"
    ."&nbsp;&nbsp;To open an internal link in a new window, put the exact, full  url of your site.<br />"
    ."&nbsp;&nbsp;To open an external link in the current window, type 'HTTP://' (in uppercase).<br /><br />"
    ."- The BACKGROUND COLOR must be a color code or a standard color name.<br />"
    ."&nbsp;&nbsp;ex: 'red' : <span color=\"red\">RED</span>  --  '#ff0000' : <span color=\"#ff0000\">RED</span><br /><br />"
    ."- The CLASS used to display categories' names must be an existing class in all your themes.<br />"
    ."&nbsp;&nbsp;The classes are in the file /themes/YOURTHEME/style/style.css.<br />"
    ."&nbsp;&nbsp;You can add your own class, for example you can add this line in the style sheets of your themes :<br />"
    ."&nbsp;&nbsp;<i>.menu        {FONT-FAMILY: Verdana,Helvetica; FONT-SIZE: 12px; COLOR: #363636; FONT-WEIGHT: bold}   </i><br />");
define_once("_MENU_CATCONTENT","Category's content");
define_once("_MENU_LINKURL","link's URL");
define_once("_MENU_LINKTEXT","link's text");
define_once("_MENU_IMAGE","Image");
define_once("_MENU_INVALIDWEIGHT","The WEIGHT value is invalid for the category");
define_once("_MENU_MUSTBENUM"," This value MUST be a number between 0 and 98 !!");
define_once("_MENU_CATS","The categories");
define_once("_MENU_AND","and");
define_once("_MENU_SAMEWEIGHT","have the same WEIGHT !!");
define_once("_MENU_MODIFWEIGHT","Return back to the previous page and modify the WEIGHT value of one of these categories.");
define_once("_MENU_BACKADMIN","Back to Menu administration");
define_once("_MENU_SUCCESS","Your block has been successfully updated !");
define_once("_MENU_GOADMIN","Configure your Menu");
define_once("_MENU_UPGRADESUCCESS","Your Menu was successfully upgraded !!");
define_once("_MENU_V1DETECTED","Titanium Portal Menu v.1.0 detected !");
define_once("_MENU_CLICKTOUPGRADE","To upgrade your menu, click");
define_once("_MENU_HERE","HERE");
define_once("_MENU_WARNINGDELETECAT","Are you sure you want to delete the category");
define_once("_MENU_GENERALOPTIONS","General Options");
define_once("_MENU_DISPLAYMEMBERSONLYMODULES","Display of 'members only' modules");
define_once("_MENU_CATEGORIESCLASS","Class for categories' names");
define_once("_MENU_DISPLAYMODULENORMAL","Normal (always displayed)");
define_once("_MENU_DISPLAYMODULEWITHICON","Displayed with icon");
define_once("_MENU_DISPLAYMODULEWITHICONFORVISTORS","for visitors");
define_once("_MENU_DISPLAYMODULEINVISIBLE","Invisible for visitors");
define_once("_MENU_YES","Yes");
define_once("_MENU_NO","No");
define_once("_MENU_REMARKSTWO","<br />- You can create a popup, to do so, enter in the field 'url' of external link :<br />"
        ."&nbsp;&nbsp;<i>javascript:window.open('http://www.url.com','popup_menu','directories=no,menubar=no,status=no,location=no,scrollbars=no,resizable=no')</i><br />"
        ."<br />&nbsp;&nbsp;You can modify display options (display scrollbars, etc...)<br />"
        ."&nbsp;&nbsp;See <a href=\"http://javascript.about.com/od/popupwindows/Popup_Windows.htm\"  target=\"_tab\">JavaScript.About.Com</a> for more information.<br /><br />");
define_once("_MENU_HR","Horizontal Rule");
define_once("_MENU_BOLD","Bold");
define_once("_MENU_LISTBOX","Drop down box");
define_once("_MENU_SENDTOHAVEMORE","Save your modifications to add new links.");
define_once("_MENU_DISPLAYCLASSES","Display :");
define_once("_MENU_MODULESCLASS","CSS class used for modules/external links");
define_once("_MENU_AUTODETECTNEW","Automatic detection of news");
define_once("_MENU_SINCE","New for");
define_once("_MENU_NBDAYS","days");
define_once("_MENU_DYNAMICMENU","Dynamic menu");
define_once("_MENU_JSSAVEBEFORE","You are about to delete this category, continue?"); 
define_once("_MENU_EDITLINKTITLE","Edit a link...");
define_once("_MENU_MOREOPTIONS","More options");
define_once("_MENU_CLASS","CSS class");
define_once("_MENU_ATTENTIONMOREOPTIONS","<strong>Attention !</strong><br />If you modify in menu's admin panel the general CSS class for categories, or for modules/links, or the time 'New!' icon is displayed, the specific values of a category or a module/link will be overwritten.");
define_once("_MENU_MOREOPTIONSUCCESS","Your modifications are applied !");
define_once("_MENU_SENDTOVALIDATE","(You should validate all modifications in the main menu panel for your modifications to be finally confirmed)");
define_once("_MENU_CLOSE","Close the window");
define_once("_MENU_TARGETBLANK","Link opened in a new window. To open in the same window, begin url with HTTP:// (uppercase)");
define_once("_MENU_TARGETNONE","Link opened in the same window. To open in a new window, begin url with http:// (lowercase)");
define_once("_MENU_NOTABLEPB","Titanium Portal Menu is unable to access its database tables.Please verify that you have installed correctly, and READ THE FAQ !");
define_once("_MENU_ATTNSUPPRCAT","<strong>Portal Menu</strong>");
