<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <title>个人收藏夹</title>


    <link href="${request.contextPath}/imgs/favicon.ico" type="image/x-icon" rel="shortcut icon"/>

    <!--背景CSS-->
    <link rel="stylesheet" media="screen" href=" ${request.contextPath}/css/background.css">

    <!--Jquery-->
    <script src="${request.contextPath}/js/jquery-3.2.1.min.js"></script>

    <!--弹出框-->
    <script src=" ${request.contextPath}/js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/css/sweetalert.css">

    <!-- bootStrap-->
    <script src="${request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href=" ${request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.css"/>

    <!--导航条样式-->
    <link rel="stylesheet" href="${request.contextPath}/css/navbar.css"/>

    <!--清除所有默认样式-->
    <link rel="stylesheet" href="${request.contextPath}/css/cleanDefault.css"/>


    <!--使用JS获取项目根路径-->
    <script>
        var path = "";
        $(function () {
            var strFullPath = window.document.location.href;
            var strPath = window.document.location.pathname;
            var pos = strFullPath.indexOf(strPath);
            var prePath = strFullPath.substring(0, pos);
            var postPath = strPath.substring(0, strPath.substr(1).indexOf('/') + 1);
            path = prePath;
        });
    </script>

    <!--获取用户的身份信息，如果用户已登陆，那么将用户身份信息显示出来-->
    <script src="${request.contextPath}/js/getUser.js"></script>


    <!--页面自定义样式-->
    <style>
        /*搜索框位置*/
        .row {
            margin-right: -15px;
            margin-left: -15px;
            top: 135px;
            left: 460px;
        }

        /*列表组*/
        .list-group {
            padding: 114px;
            margin-bottom: 20px;
        }

        /*列表组样式*/
        a.list-group-item:hover, button.list-group-item:hover, a.list-group-item:focus, button.list-group-item:focus {
            color: #555;
            text-decoration: none;
            background-color: #f5f5f5;
            font-size: large;
        }


    </style>

    <!--模态框居中-->
    <script src="${request.contextPath}/js/modelCenter.js"></script>

    <!--搜索下拉框的样式-->
    <link rel="stylesheet" href="${request.contextPath}/css/search.css"/>

    <!--本页涉及到的JS-->
    <script src="${request.contextPath}/js/toFavorites.js"></script>

</head>


<body>

<!--获取用户的信息-->
<input type="hidden" id="userNickname">

<div id="particles-js">

    <!--导航条-->
<#include "/common/navbar.ftl">


    <!--添加网站模态框-->
    <div class="modal fade" aria-hidden="true" data-backdrop="static" id="addSiteModel">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">增加网站</h4>
                </div>
                <!--模态框中的内容-->
                <div class="modal-body">
                    <form class="form-horizontal" id="siteForm">

                        <input type="hidden" id="userId" name="userId">
                        <div class="form-group">
                            <label for="inputSiteAddr" class="col-sm-2 control-label">网站地址</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputSiteAddr"
                                       placeholder="请输入完整的网站地址(包括http(s)://)"
                                       name="webSiteAddr">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputSiteName" class="col-sm-2 control-label">命名</label>
                            <div class="col-sm-10">

                                <input type="text" name="webSiteName" class="form-control" id="inputSiteName"
                                       placeholder="请为该网站命名(为了可以方便查找)">
                            </div>

                        </div>

                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary" id="addSite">确定</button>

                </div>
            </div>
        </div>
    </div>

    <!--删除网站模态框避免点击背景处关闭,aria-hidden="true" data-backdrop="static" -->
    <div class="modal fade " aria-hidden="true" data-backdrop="static" id="manageSite">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">管理网站</h4>
                </div>
                <!--模态框中的内容-->
                <div class="modal-body">

                    <table class="table table-hover">
                        <tr id="manageSiteTr">
                            <td>网站完整地址：</td>
                            <td>网站命名：</td>
                            <td>操作：</td>
                        </tr>
                        <input type="hidden" id="manageSiteContent">
                    </table>


                    <!--分页-->
                    <input type="hidden" id="currentPage">
                    <input type="hidden" id="totalPageCount">
                    <input type="hidden" id="totalRecordCount">

                    <ul class="pagination">
                    <#--<li class="disabled"><a href="#!"><i class="material-icons">上一页</i></a></li>
                        <li class="active"><a href="#!">1</a></li>
                        <li class="waves-effect"><a href="#!">2</a></li>
                        <li class="waves-effect"><a href="#!">3</a></li>
                        <li class="waves-effect"><a href="#!">4</a></li>
                        <li class="waves-effect"><a href="#!">5</a></li>
                        <li class="waves-effect"><a href="#!"><i class="material-icons">下一页</i></a></li>-->
                    </ul>

                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" name="cancelOperate">取消</button>
                    <button type="button" class="btn btn-primary" name="cancelOperate">确定</button>
                </div>
            </div>
        </div>
    </div>


    <!--搜索网站-->
    <div class="row " style="position: absolute; margin:0px auto;
text-align:center; ">
        <div class="col-lg-6 gover_search">
            <div class="input-group gover_search_form clearfix">

                <input class="form-control input-lg " type="text" placeholder="请输入您自定义的网站名..." id="condition">
                <span class="input-group-btn">
                    <button class="btn btn-primary btn-lg" type="button" id="search">搜索</button>
                </span>
                <div class="search_suggest" id="gov_search_suggest">
                    <ul>

                    </ul>
                </div>
            </div>
        </div>
    </div>


    <!--列表组-->
    <div class="list-group" style="position: absolute; ">
        <button type="button" class="list-group-item" data-toggle="modal"
                data-target="#addSiteModel">增加网站
        </button>
        <button type="button" class="list-group-item" id="queryById" data-toggle="modal"
                data-target="#manageSite">删除网站
        </button>
    </div>

</div>
</body>

<!--导航条JS-->
<script src="${request.contextPath}/js/narbar.js"></script>


<!-- 背景JS -->
<script src=" ${request.contextPath}/js/background/particles.js"></script>
<script src=" ${request.contextPath}/js/background/app.js"></script>
</html>