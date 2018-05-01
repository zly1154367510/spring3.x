<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>首页</title>


    <!--Jquery-->
    <script type="text/javascript" src="${path}/js/jquery-3.2.1.min.js"></script>

    <!--背景CSS-->
    <link rel="stylesheet" media="screen" href="${path}/css/background.css">

    <#--bootstrap字体-->
    <link rel="stylesheet" href="${path}/bootstrap-3.3.7-dist/css/bootstrap.css"/>

    <link href="${path}/imgs/favicon.ico" type="image/x-icon" rel="shortcut icon"/>

        <!--导航条CSS-->
    <link rel="stylesheet" href="${path}/css/navbar.css"/>




    <#--弹出框-->
    <script src="${path}/js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${path}/css/sweetalert.css">

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

    <!--清除所有默认样式-->
    <link rel="stylesheet" href="${path}/css/cleanDefault.css"/>

    <!--获取用户的身份信息，如果用户已登陆，那么将用户身份信息显示出来-->
    <script src="${path}/js/getUser.js"></script>


    <!--获取天气预报-->
    <script>
        $(function () {
            /*先获取位置、再获取天气预报信息*/
            $.ajax({
                url: "http://restapi.amap.com/v3/ip?key=11ddf2f282ee4c39d35a46c3a4dae845",
                type: "get",
                success: function (responseText1) {
                    $.ajax({
                        url: "https://free-api.heweather.com/s6/weather/forecast?key=d66df9e9bec5484da78f88a5bb58d092&location=" + responseText1.city,
                        type: "get",
                        success: function (responseText2) {

                            $(".jumbotron h1").html(responseText1.city + "近三日天气");

                            var jsonObj = responseText2.HeWeather6[0].daily_forecast;
                            for (var i = 0; i < jsonObj.length; i++) {


                                var date = jsonObj[i].date;
                                var weather = jsonObj[i].cond_txt_d;
                                var low = jsonObj[i].tmp_min;
                                var hight = jsonObj[i].tmp_max;

                                $(".jumbotron").append("<p>" + date + "：" + weather + "，温度：" + low + "～" + hight + "℃</p>");

                            }
                        },
                        error: function () {
                            sweetAlert("获取天气失败...")
                        }
                    });

                },
                error: function () {
                    sweetAlert("定位失败...")
                }
            });
        });
    </script>

    <!--天气预报样式-->
    <style>
        .jumbotron {
            padding-top: 115px;
            padding-bottom: 30px;
            margin-bottom: 30px;
            color: #c7c7c7;
            background-color: black;
        }
        .jumbotron h1 {
            color: inherit;
            margin-bottom: inherit;
        }
    </style>
</head>
<body>

<input type="hidden" id="userNickname">
<input type="hidden" id="userId">

<!-- 导航条被嵌套在背景中 -->
<div id="particles-js">
    <!--导航条-->
    <nav>
        <div>
            <a href=" ${path}/index.html">
                <div>
                    <h1>首页</h1>
                    <span></span>
                </div>
                <div>
                    <h1>首页</h1>
                    <span></span>
                </div>
            </a>
        </div>
        <div>
            <a href=" ${path}/goURL/onlineBarrage/onlineBarrage.do">
                <div>
                    <h1>在线聊天</h1>
                    <span></span>
                </div>
                <div>
                    <h1>在线聊天</h1>
                    <span></span>
                </div>
            </a>
        </div>
        <div>
            <a href=" ${path}/goURL/favorites/toFavorites.do"">
            <div>
                <h1>个人收藏夹</h1>
                <span></span>
            </div>
            <div>
                <h1>个人收藏夹</h1>
                <span></span>
            </div>
            </a>
        </div>
        <div>
            <a href="${path}/goURL/memo/toMemo.do">
                <div>
                    <h1>个人备忘录</h1>
                    <span></span>
                </div>
                <div>
                    <h1>个人备忘录</h1>
                    <span></span>
                </div>
            </a>
        </div>

        <div>
            <a href="${path}/goURL/user/toLogin.do" id="loginDiv">
                <div>
                    <h1>登陆</h1>
                    <span></span>
                </div>
                <div>
                    <h1 id="loginDiv1">登陆</h1>
                    <span></span>
                </div>
            </a>
        </div>
        <div>
            <a href="${path}/goURL/user/toRegister.do" id="registerDiv">
                <div>
                    <h1>注册</h1>
                    <span></span>
                </div>
                <div>
                    <h1>注册</h1>
                    <span></span>
                </div>
            </a>
        </div>
        <div>
            <a href="${path}/goURL/about/toAboutSite.do ">
                <div>
                    <h1>关于网站</h1>
                    <span></span>
                </div>
                <div>
                    <h1>关于网站</h1>
                    <span></span>
                </div>
            </a>
        </div>
    </nav>

    <!--天气预报-->
    <div class="jumbotron text-center" style="position: absolute;width: 100%" id="weather">
        <h1></h1>

    </div>
</div>

<!--页脚-->
<footer class="footer navbar-fixed-bottom ">
    <div class="container">
        备案号：<a href="http://www.miitbeian.gov.cn/">粤ICP备17145745号</a>
    </div>
</footer>

<!--导航条JS-->
<script src="${path}/js/narbar.js"></script>

<!-- 背景JS -->
<script src="js/background/particles.js"></script>
<script src="js/background/app.js"></script>

</body>
</html>