<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>手机列表</title>

</head>
<body>
<jsp:include page="../static/public/public.jsp"/>

<div id="content">
    <!-- Start .content-wrapper -->
    <div class="content-wrapper">
        <div class="row">
            <!-- Start .row -->
            <!-- Start .page-header -->
            <div class="col-lg-12 heading">
                <h1 class="page-header"><i class="im-table2"></i> 手机列表</h1>
                <!-- Start .bredcrumb -->
                <ul id="crumb" class="breadcrumb">
                </ul>
                <!-- End .breadcrumb -->
                <!-- Start .option-buttons -->
                <div class="option-buttons">
                    <div class="btn-toolbar" role="toolbar">
                        <div class="btn-group">
                            <a id="clear-localstorage" class="btn tip" title="Reset panels position">
                                <i class="ec-refresh color-red s24"></i>
                            </a>
                        </div>
                        <div class="btn-group dropdown">
                            <a class="btn dropdown-toggle" data-toggle="dropdown" id="dropdownMenu1"><i class="br-grid s24"></i></a>
                            <div class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu1">
                                <div class="option-dropdown">
                                    <div class="shortcut-button">
                                        <a href="#">
                                            <i class="im-pie"></i>
                                            <span>Earning Stats</span>
                                        </a>
                                    </div>
                                    <div class="shortcut-button">
                                        <a href="#">
                                            <i class="ec-images color-dark"></i>
                                            <span>Gallery</span>
                                        </a>
                                    </div>
                                    <div class="shortcut-button">
                                        <a href="#">
                                            <i class="en-light-bulb color-orange"></i>
                                            <span>Fresh ideas</span>
                                        </a>
                                    </div>
                                    <div class="shortcut-button">
                                        <a href="#">
                                            <i class="ec-link color-blue"></i>
                                            <span>Links</span>
                                        </a>
                                    </div>
                                    <div class="shortcut-button">
                                        <a href="#">
                                            <i class="ec-support color-red"></i>
                                            <span>Support</span>
                                        </a>
                                    </div>
                                    <div class="shortcut-button">
                                        <a href="#">
                                            <i class="st-lock color-teal"></i>
                                            <span>Lock area</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="btn-group dropdown">
                            <a class="btn dropdown-toggle" data-toggle="dropdown" id="dropdownMenu2"><i class="ec-pencil s24"></i></a>
                            <div class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu2">
                                <div class="option-dropdown">
                                    <div class="row">
                                        <p class="col-lg-12">Quick post</p>
                                        <form class="form-horizontal" role="form">
                                            <div class="form-group">
                                                <div class="col-lg-12">
                                                    <input type="text" class="form-control" placeholder="Enter title">
                                                </div>
                                            </div>
                                            <!-- End .form-group  -->
                                            <div class="form-group">
                                                <div class="col-lg-12">
                                                    <textarea class="form-control wysiwyg" placeholder="Enter text"></textarea>
                                                </div>
                                            </div>
                                            <!-- End .form-group  -->
                                            <div class="form-group">
                                                <div class="col-lg-12">
                                                    <input type="text" class="form-control tags1" placeholder="Enter tags">
                                                </div>
                                            </div>
                                            <!-- End .form-group  -->
                                            <div class="form-group">
                                                <div class="col-lg-12">
                                                    <button class="btn btn-default btn-xs">Save Draft</button>
                                                    <button class="btn btn-success btn-xs pull-right">Publish</button>
                                                </div>
                                            </div>
                                            <!-- End .form-group  -->
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="btn-group">
                            <a class="btn dropdown-toggle" data-toggle="dropdown" id="dropdownMenu3"><i class="ec-help s24"></i></a>
                            <div class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu3">
                                <div class="option-dropdown">
                                    <p>First time visitor ? <a href="#" id="app-tour" class="btn btn-success ml15">Take app tour</a>
                                    </p>
                                    <hr>
                                    <p>Or check the <a href="#" class="btn btn-danger ml15">FAQ</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End .option-buttons -->
            </div>
            <!-- End .page-header -->
        </div>
        <!-- End .row -->
        <div class="outlet">
            <!-- Start .outlet -->
            <!-- Page start here ( usual with .row ) -->
            <div class="row">
                <div class="col-lg-12">
                    <!-- col-lg-12 start here -->
                    <div class="panel panel-default plain toggle panelClose panelRefresh">
                        <!-- Start .panel -->
                        <div class="panel-heading white-bg">
                            <h4 class="panel-title">Data table</h4>
                        </div>
                        <div class="panel-body">
                            <table class="table display" id="datatable">
                                <thead>
                                <tr>
                                    <th>名称</th>
                                    <th>宣传语</th>
                                    <th>价格</th>
                                    <th>库存</th>
                                    <th>出厂时间</th>
                                    <th>更新时间</th>
                                    <th>操作</th>
                                </tr>
                                </thead>

                                <tbody>

                                   <c:forEach items="${list}" var="item">
                                       <tr>
                                           <td>${item.title}</td>
                                           <td>${item.sellPoint}</td>
                                           <td>${item.price}</td>
                                           <td>${item.num}</td>

                                           <td>${item.created}</td>
                                           <td>${item.updated}</td>
                                           <td><a>修改</a><a>删除</a></td>
                                       </tr>
                                   </c:forEach>


                                </tbody>

                                <tfoot>
                                <tr>
                                    <th>名称</th>
                                    <th>宣传语</th>
                                    <th>价格</th>
                                    <th>库存</th>
                                    <th>出厂时间</th>
                                    <th>更新时间</th>
                                    <th>操作</th>
                                </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                    <!-- End .panel -->
                    <nav aria-label="Page navigation">
                        <ul class="pagination">
                            <li>
                                <a href="http://localhost:8089/item?page=${previousPage}" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>

                            <li>
                                <a href="http://localhost:8089/item?page=${nextPage}" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                            <li>
                                <div class="input-group">
                                    <form action="http://localhost:8089/item" method="get">
                                        <input type="text" name="page" class="form-control">
                                        <input type="submit" value="跳转" class="btn btn-default">
                                    </form>
                                <div>
                            </li>
                        </ul>
                    </nav>
                </div>
                <!-- col-lg-12 end here -->
            </div>

            <!-- Page End here -->
</div>
<!-- End .outlet -->
</div>
    <!-- End .content-wrapper -->
    <div class="clearfix"></div>
</div>
</body>
</html>