<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>个人备忘录</title>
    <link href="${request.contextPath}/imgs/favicon.ico" type="image/x-icon" rel="shortcut icon"/>


    <!--Jquery-->
    <script src="${request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script src="${request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="${request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="${request.contextPath}/css/dashboard.css" rel="stylesheet">

    <!--清除所有默认样式-->
    <link rel="stylesheet" href="${request.contextPath}/css/cleanDefault.css"/>


    <!--导航条css-->
    <link rel="stylesheet" href="${request.contextPath}/css/navbar.css"/>


    <!--时间选择器-->
    <link href="${request.contextPath}/css/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
    <script type="text/javascript" src="${request.contextPath}/js/bootstrap-datetimepicker.min.js"></script>
    <script type="text/javascript" src="${request.contextPath}/js/bootstrap-datetimepicker.fr.js"></script>


    <!--弹出框-->
    <script src=" ${request.contextPath}/js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/css/sweetalert.css">


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




</head>

<body>


<!--导航条-->
<#include "/common/navbar.ftl">


<input type="hidden" id="userEmail">


<!--页面内容-->
<div class="container-fluid">

    <div class="row">
        <!--左侧导航条-->
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar" id="leftNavBar">
                <li class="active"><a href="#" name="queryMemo">查看所有的备忘录<span class="sr-only">(current)</span></a></li>
                <li><a href="#" name="addMemo">添加备忘录</a></li>
            </ul>
        </div>

        <!--右侧的内容-->
        <div>
            <!--查看所有备忘录-->
            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" id="queryMemo">
                <h1 class="page-header">查看所有的备忘录</h1>

                <!--4张图片-->
                <div class="row placeholders">
                    <div class="col-xs-6 col-sm-3 placeholder">
                        <img src="${request.contextPath}/imgs/20001.png" width="200" height="200" class="img-responsive"
                             alt="Generic placeholder thumbnail">
                    </div>
                    <div class="col-xs-6 col-sm-3 placeholder">
                        <img src="${request.contextPath}/imgs/20002.png" width="200" height="200" class="img-responsive"
                             alt="Generic placeholder thumbnail">
                    </div>
                    <div class="col-xs-6 col-sm-3 placeholder">
                        <img src="${request.contextPath}/imgs/20003.png">
                    </div>
                    <div class="col-xs-6 col-sm-3 placeholder">
                        <img src="${request.contextPath}/imgs/20004.png">
                    </div>
                </div>

                <h2 class="sub-header">查看所有备忘录</h2>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>用户</th>
                            <th>编辑该备忘录的时间</th>
                            <th>发送的邮箱地址</th>
                            <th>发送的内容</th>
                            <th>预定发送时间</th>
                            <th>状态</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody id="allMemo">

                        </tbody>
                    </table>
                </div>
            </div>

            <!--增加备忘录-->
            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" id="addMemo" style="display: none">
                <h1 class="page-header">增加备忘录</h1>

                <!--4张图片-->
                <div class="row placeholders">
                    <div class="col-xs-6 col-sm-3 placeholder">
                        <img src="${request.contextPath}/imgs/20001.png" width="200" height="200" class="img-responsive"
                             alt="Generic placeholder thumbnail">
                    </div>
                    <div class="col-xs-6 col-sm-3 placeholder">
                        <img src="${request.contextPath}/imgs/20002.png" width="200" height="200" class="img-responsive"
                             alt="Generic placeholder thumbnail">
                    </div>
                    <div class="col-xs-6 col-sm-3 placeholder">
                        <img src="${request.contextPath}/imgs/20003.png">
                    </div>
                    <div class="col-xs-6 col-sm-3 placeholder">
                        <img src="${request.contextPath}/imgs/20004.png">
                    </div>
                </div>

                <h2 class="sub-header">增加备忘录</h2>
                <form class="form-horizontal" method="post" action="${request.contextPath}/memo/saveMemo.do">
                    <div class="form-group">
                        <label for="inputEmail" class="col-sm-2 control-label">邮箱地址：</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" name="email" id="inputEmail" readonly>
                        </div>
                    </div>

                    <input type="hidden" name="userId" id="userId">

                    <div class="form-group">
                        <label for="datetimepicker" class="col-sm-2 control-label">选择发送邮件的时间：</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="sendTime" id="datetimepicker" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputContent" class="col-sm-2 control-label">备忘录内容：</label>
                        <div class="col-sm-10">
                            <textarea name="memoContent" cols="30" rows="10" id="inputContent"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">增加备忘录</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <!-- 修改备忘录的模态框-->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">修改备忘录</h4>
                </div>
                <div class="modal-body">

                    <div class="table-responsive">

                        <form id="updateForm">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>发送的内容</th>
                                    <th>预定发送时间</th>
                                </tr>
                                </thead>
                                <tbody id="memoContentManager">


                                </tbody>
                            </table>
                        </form>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary" id="updateMemo">确认修改</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!--该页面需要用到的JS-->
<script src="${request.contextPath}/js/toMemo.js"></script>

<!--导航条JS-->
<script src="${request.contextPath}/js/narbar.js"></script>



</body>
</html>
