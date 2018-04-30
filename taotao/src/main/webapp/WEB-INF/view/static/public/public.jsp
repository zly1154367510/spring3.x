<%--
  Created by IntelliJ IDEA.
  User: zly11
  Date: 2018/4/30
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Tables</title>
    <!-- Mobile specific metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- Force IE9 to render in normal mode -->
    <!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
    <meta name="author" content="SuggeElson" />
    <meta name="description" content=""
    />
    <meta name="keywords" content=""
    />
    <meta name="application-name" content="sprFlat admin template" />
    <!-- Import google fonts - Heading first/ text second -->
    <link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:400,700|Droid+Sans:400,700' />
    <!--[if lt IE 9]>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:700" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Droid+Sans:400" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Droid+Sans:700" rel="stylesheet" type="text/css" />
    <![endif]-->
    <!-- Css files -->
    <!-- Icons -->
    <link href="static/css/icons.css" rel="stylesheet" />
    <!-- jQueryUI -->
    <link href="static/css/sprflat-theme/jquery.ui.all.css" rel="stylesheet" />
    <!-- Bootstrap stylesheets (included template modifications) -->
    <link href="static/css/bootstrap.css" rel="stylesheet" />
    <!-- Plugins stylesheets (all plugin custom css) -->
    <link href="static/css/plugins.css" rel="stylesheet" />
    <!-- Main stylesheets (template main css file) -->
    <link href="static/css/main.css" rel="stylesheet" />
    <!-- Custom stylesheets ( Put your own changes here ) -->
    <link href="static/css/custom.css" rel="stylesheet" />
    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/img/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/img/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/img/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/img/ico/apple-touch-icon-57-precomposed.png">
    <link rel="icon" href="/img/ico/favicon.ico" type="image/png">
    <!-- Windows8 touch icon ( http://www.buildmypinnedsite.com/ )-->
    <meta name="msapplication-TileColor" content="#3399cc" />
</head>
<body>
<!-- Start #header -->
<div id="header">
    <div class="container-fluid">
        <div class="navbar">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.html">
                    <i class="im-windows8 text-logo-element animated bounceIn"></i><span class="text-logo">spr</span><span class="text-slogan">flat</span>
                </a>
            </div>

        </div>
        <!-- Start #header-area -->
        <div id="header-area" class="fadeInDown">
            <div class="header-area-inner">
                <ul class="list-unstyled list-inline">
                    <li>
                        <div class="shortcut-button">
                            <a href="#">
                                <i class="im-pie"></i>
                                <span>Earning Stats</span>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="shortcut-button">
                            <a href="#">
                                <i class="ec-images color-dark"></i>
                                <span>Gallery</span>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="shortcut-button">
                            <a href="#">
                                <i class="en-light-bulb color-orange"></i>
                                <span>Fresh ideas</span>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="shortcut-button">
                            <a href="#">
                                <i class="ec-link color-blue"></i>
                                <span>Links</span>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="shortcut-button">
                            <a href="#">
                                <i class="ec-support color-red"></i>
                                <span>Support</span>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="shortcut-button">
                            <a href="#">
                                <i class="st-lock color-teal"></i>
                                <span>Lock area</span>
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!-- End #header-area -->
    </div>
    <!-- Start .header-inner -->
</div>
<!-- End #header -->
<!-- Start #sidebar -->
<div id="sidebar">
    <!-- Start .sidebar-inner -->
    <div class="sidebar-inner">
        <!-- Start #sideNav -->
        <ul id="sideNav" class="nav nav-pills nav-stacked">
            <li class="top-search">
                <form>
                    <input type="text" name="search" placeholder="Search ...">
                    <button type="submit"><i class="ec-search s20"></i>
                    </button>
                </form>
            </li>
            <li><a href="http://localhost:8089/index/{1}">手机列表 <i class="im-screen"></i></a>
            </li>
            <li><a href="charts.html">Charts <i class="st-chart"></i></a>
            </li>
            <li>
                <a href="#"> Forms <i class="im-paragraph-justify"></i></a>
                <ul class="nav sub">
                    <li><a href="forms.html"><i class="ec-pencil2"></i> Form Stuff</a>
                    </li>
                    <li><a href="form-validation.html"><i class="im-checkbox-checked"></i> Form Validation</a>
                    </li>
                    <li><a href="form-wizard.html"><i class="im-wand"></i> Form Wizard</a>
                    </li>
                    <li><a href="wysiwyg.html"><i class="fa-pencil"></i> WYSIWYG editor</a>
                    </li>
                </ul>
            </li>
            <li><a href="#"> Tables <i class="im-table2"></i></a>
                <ul class="nav sub">
                    <li><a href="tables.html"><i class="en-arrow-right7"></i> Static tables</a>
                    </li>
                    <li><a href="data-tables.html"><i class="en-arrow-right7"></i> Data tables</a>
                    </li>
                </ul>
            </li>
            <li><a href="#"> UI Elements <i class="st-lab"></i></a>
                <ul class="nav sub">
                    <li><a href="notifications.html"><i class="fa-bell"></i> Notifications</a>
                    </li>
                    <li><a href="panels.html"><i class="br-window"></i> Panels</a>
                    </li>
                    <li><a href="tiles.html"><i class="im-windows8"></i> Tiles</a>
                    </li>
                    <li><a href="elements.html"><i class="st-cube"></i> Elements</a>
                    </li>
                    <li><a href="icons.html"><i class="im-stack"></i> Icons</a>
                    </li>
                    <li><a href="buttons.html"><i class="im-play2"></i> Buttons</a>
                    </li>
                    <li><a href="calendar.html"><i class="im-calendar2"></i> Calendar</a>
                    </li>
                    <li><a href="grid.html"><i class="st-grid"></i> Grid</a>
                    </li>
                    <li><a href="typo.html"><i class="im-font"></i> Typography</a>
                    </li>
                    <li><a href="list.html"><i class="fa-list"></i> Lists</a>
                    </li>
                </ul>
            </li>
            <li><a href="#"><i class="ec-mail"></i> Email app</a>
                <ul class="nav sub">
                    <li><a href="email-inbox.html"><i class="ec-archive"></i> Inbox</a>
                    </li>
                    <li><a href="email-read.html"><i class="br-eye"></i> Read email</a>
                    </li>
                    <li><a href="email-write.html"><i class="ec-pencil2"></i> Write email</a>
                    </li>
                </ul>
            </li>
            <li><a href="file.html"><i class="en-upload"></i> File Manager</a>
            </li>
            <li><a href="gallery.html"><i class="im-images"></i> Gallery</a>
            </li>
            <li><a href="widgets.html"><i class="st-diamond"></i> Widgets </a>
            </li>
            <li><a href="#"><i class="ec-location"></i> Maps</a>
                <ul class="nav sub">
                    <li><a href="maps-google.html"><i class="im-map2"></i> Google maps</a>
                    </li>
                    <li><a href="maps-vector.html"><i class="en-location2"></i> Vector maps</a>
                    </li>
                </ul>
            </li>
            <li><a href="#">Pages <i class="st-files"></i></a>
                <ul class="nav sub">
                    <li><a href="invoice.html"><i class="st-file"></i> Invoice</a>
                    </li>
                    <li><a href="profile.html"><i class="ec-user"></i> Profile page</a>
                    </li>
                    <li><a href="search.html"><i class="ec-search"></i> Search page</a>
                    </li>
                    <li><a href="blank.html"><i class="im-file4"></i> Blank page</a>
                    </li>
                    <li><a href="login.html"><i class="ec-locked"></i> Login page</a>
                    </li>
                    <li><a href="lockscreen.html"><i class="ec-locked"></i> Lock screen</a>
                    </li>
                    <li>
                        <a href="#"><i class="st-files"></i> Error pages</a>
                        <ul class="nav sub">
                            <li><a href="400.html"><i class="st-file-broken"></i> Error 400</a>
                            </li>
                            <li><a href="401.html"><i class="st-file-broken"></i> Error 401</a>
                            </li>
                            <li><a href="403.html"><i class="st-file-broken"></i> Error 403</a>
                            </li>
                            <li><a href="404.html"><i class="st-file-broken"></i> Error 404</a>
                            </li>
                            <li><a href="405.html"><i class="st-file-broken"></i> Error 405</a>
                            </li>
                            <li><a href="500.html"><i class="st-file-broken"></i> Error 500</a>
                            </li>
                            <li><a href="503.html"><i class="st-file-broken"></i> Error 503</a>
                            </li>
                            <li><a href="offline.html"><i class="st-window"></i> Offline</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#">Bonus <i class="im-gift"></i></a>
                <ul class="nav sub">
                    <li><a href="landing.html"><i class="im-airplane"></i> Landing page</a>
                    </li>
                </ul>
            </li>
        </ul>
        <!-- End #sideNav -->
        <!-- Start .sidebar-panel -->
        <div class="sidebar-panel">
            <h4 class="sidebar-panel-title"><i class="im-fire"></i> Server usage</h4>
            <div class="sidebar-panel-content">
                <ul class="server-stats">
                    <li>
                        <span class="txt">Disk space</span>
                        <span class="percent">78</span>
                        <div id="usage-sparkline" class="sparkline">Loading...</div>
                        <div class="pie-chart" data-percent="78"></div>
                    </li>
                </ul>
                <ul class="server-stats">
                    <li>
                        <span class="txt">CPU</span>
                        <span class="percent">56</span>
                        <div id="cpu-sparkline" class="sparkline">Loading...</div>
                        <div class="pie-chart" data-percent="56"></div>
                    </li>
                </ul>
                <ul class="server-stats">
                    <li>
                        <span class="txt">Memory</span>
                        <span class="percent">14</span>
                        <div id="ram-sparkline" class="sparkline">Loading...</div>
                        <div class="pie-chart" data-percent="14"></div>
                    </li>
                </ul>
            </div>
        </div>
        <!-- End .sidebar-panel -->
    </div>
    <!-- End .sidebar-inner -->
</div>