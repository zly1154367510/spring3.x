<%--
  Created by IntelliJ IDEA.
  User: zly11
  Date: 2018/4/30
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
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
            <li>
                产品管理 <i class="im-paragraph-justify"></i>
            </li>
            <li><a href="http://localhost:8089/item?page=1">产品列表 <i class="glyphicon glyphicon-th-list"></i></a>
            </li>
            <li><a href="http://localhost:8089/additem">添加商品 <i class="glyphicon glyphicon-plus"></i></a>
            </li>
            <li>
                 首页广告管理 <i class="im-paragraph-justify"></i>
            </li>
            <li><a href="http://localhost:8089/adv">广告列表 <i class="glyphicon glyphicon-th-list"></i></a>
            <li><a href="http://localhost:8089/addAdv">添加广告 <i class="glyphicon glyphicon-plus"></i></a>
            </li>



        </ul>
        <!-- End #sideNav -->
        <!-- Start .sidebar-panel -->

        <!-- End .sidebar-panel -->
    </div>
    <!-- End .sidebar-inner -->
</div>