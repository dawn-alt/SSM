<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86198
  Date: 2022/6/15
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>结果展示</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap1.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style0.css">
    <%--    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/addCSS.css">--%>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/sliderStyle.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/sliderStyle.js"></script>
    <style>
        .scroll-background{
            /*background-image: url("<%=request.getContextPath()%>/resources/images/sprite.png");*/
            background-repeat: no-repeat;
        }

        .content {
            float:left;
            clear:right;
            width:80%;
            height:700px;
            background:white;
            color:#122b40;
        background:url("<%=request.getContextPath()%>/resources/images/3.jpg");
            background-repeat: no-repeat;
            background-size: 100%,100%;
            line-height: 175%;
        }
        th{
            font-family:方正粗黑宋简体;
            font-size: 20px;
        }
        .textinput {
            background-color: #ffffff;
            border: 1px solid #cccccc;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            -webkit-transition: border linear 0.2s, box-shadow linear 0.2s;
            -moz-transition: border linear 0.2s, box-shadow linear 0.2s;
            -o-transition: border linear 0.2s, box-shadow linear 0.2s;
            transition: border linear 0.2s, box-shadow linear 0.2s;
            height: 40px;
            width: 100%;
        }
    </style>
</head>
<body>
<div class="content">
    <form action="<%=request.getContextPath()%>/primer/showPrimer1" method="post">
        <table class="table table-hover" width="500px" style="display:block;overflow-y:auto;">
            <tr>
                <th>SSR_ID</th>
                <th>Forward Primer</th>
                <th>Reverse Primer</th>
                <th>Tm</th>
                <th>Ampli  </th>
            </tr>
            <c:forEach items="${primerList}" var="primer">
                <tr>
                    <td>${primer.SSR_ID}</td>
                    <td>${primer.forward_primer}</td>
                    <td>${primer.reverse_primer}</td>
                    <td>${primer.tm}</td>
                    <td>${primer.amplicon_len}</td>
                </tr>
            </c:forEach>
        </table>
    </form>
</div>
</body>
</html>
