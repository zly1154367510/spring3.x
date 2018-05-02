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


</div>
    <!-- End .content-wrapper -->
    <div class="clearfix"></div>
</div>
</body>
</html>