<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>账户登陆</title>

    <link href="${request.contextPath}/imgs/favicon.ico" type="image/x-icon" rel="shortcut icon"/>

    <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
    <meta name="author" content="Vincent Garreau"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">


    <!--背景样式-->
    <link rel="stylesheet" media="screen" href="${request.contextPath}/css/background.css">

    <!--表单的样式-->
    <link href="${request.contextPath}/css/loginform.css" rel="stylesheet">

    <!--bootstrap与validation样式和JS-->
    <script src="${request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <link href="${request.contextPath}/bootstrap-3.3.7-dist/css/bootstrapValidator.min.css" rel="stylesheet">
    <link href="${request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="${request.contextPath}/bootstrap-3.3.7-dist/js/bootstrapValidator.min.js"></script>


    <#--弹出框-->
    <script src="${request.contextPath}/js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/css/sweetalert.css">


    <style>
        /*注册超链接的位置往下调*/
        .btn-primary {
            color: #fff;
            background-color: #337ab7;
            border-color: #2e6da4;
            margin-bottom: 15px;
        }

        /*忘记密码超链接往右调*/
        label, .radio label {
            min-height: 20px;
            padding-left: 20px;
            margin-bottom: 0;
            font-weight: 400;
            cursor: pointer;
            margin-right: 79px;
        }
    </style>



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

    <script src="${request.contextPath}/js/toLogin.js">

    </script>




</head>
<body>

<!-- 表单被嵌套在背景中 -->

<div id="particles-js">


    <!--登陆-->
    <div class="container" style="position: absolute;left: 120px;">
        <form class="form-signin" action="${request.contextPath}/user/login.do" method="post" id="loginForm">

            <h2 class="form-signin-heading">账户登陆</h2>
            <div class="form-group">
                <input type="text" class="form-control" name="userEmail" id="userEmail" placeholder="邮箱地址"/>
            </div>
            <div class="form-group">
                <input type="password" class="form-control" name="userPassword" placeholder="密码"/>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="captcha" id="inputCaptcha" placeholder="验证码"/>
                <img src="${request.contextPath}/user/getGifCode.do" id="captcha">
            </div>

            <div class="checkbox">
                <label>
                    <input type="checkbox" name="rememberMe"> 记住我
                </label>
                <label>
                    <a href="${request.contextPath}/goURL/user/toForget.do">忘记密码</a>
                </label>
            </div>
            <button class="btn  btn-primary btn-block" id="submitButton" type="submit">立即登陆</button>
            <div class="form-group">
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