<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>账户注册</title>

    <link href="${request.contextPath}/imgs/favicon.ico" type="image/x-icon" rel="shortcut icon"/>

    <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
    <meta name="author" content="Vincent Garreau"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <style>
        /*登陆的超链接往下调*/
        .btn-primary {
            color: #fff;
            background-color: #337ab7;
            border-color: #2e6da4;
            margin-bottom: 15px;
        }
    </style>

    <!--背景样式-->
    <link rel="stylesheet" media="screen" href="${request.contextPath}/css/background.css">

    <!--表单的样式-->
    <link href="${request.contextPath}/css/loginform.css" rel="stylesheet">

    <!--bootstrap与validation样式和JS-->
    <link href="${request.contextPath}/bootstrap-3.3.7-dist/css/bootstrapValidator.min.css" rel="stylesheet">
    <link href="${request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script src="${request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="${request.contextPath}/bootstrap-3.3.7-dist/js/bootstrapValidator.min.js"></script>

    <#--弹出框-->
    <script src="${request.contextPath}/js/sweetalert.min.js"></script>
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
            path = prePath ;
        });
    </script>

    <script src="${request.contextPath}/js/toForget.js">

    </script>

</head>
<body>


<!-- 表单被嵌套在背景中 -->
<div id="particles-js">
    <!--注册-->
    <div class="container" style="position: absolute;left: 120px;">
        <form class="form-signin" action="${request.contextPath}/user/forgetPassword.do" method="post">
            <h2 class="form-signin-heading">重置密码</h2>
            <div class="form-group">
                <input type="text" class="form-control" name="userEmail" id="userEmail" placeholder="邮箱地址"/>
            </div>
            <div class="form-group">
                <button class="btn  btn-primary btn-block" type="submit">重置密码</button>
            </div>
            <div class="form-group">
                <a href="${request.contextPath}/goURL/user/toLogin.do">登陆</a>
                &nbsp; |&nbsp;
                <a href="${request.contextPath}/goURL/user/toRegister.do">注册</a>
            </div>
        </form>
    </div>
</div>

<!-- 背景JS -->
<script src="${request.contextPath}/js/background/particles.js"></script>
<script src="${request.contextPath}/js/background/app.js"></script>


</body>
</html>