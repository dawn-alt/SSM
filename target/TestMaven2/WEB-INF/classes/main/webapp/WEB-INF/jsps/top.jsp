<%--
  Created by IntelliJ IDEA.
  User: 86198
  Date: 2022/5/9
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Top</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap1.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style0.css">
</head>
<body>
<div id="Head_1">

    <div id="Head_1_Logo">
        <img src="<%=request.getContextPath() %>/resources/images/1.png" width="90px" height="80px"/>
    </div>

    <div id="Head_1_UserWelcome" >
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right" >
                <li><a href="<%=request.getContextPath()%>/mainPage/homepage"  target="_parent" class="active">回到首页</a></li>
            </ul>
        </div>
    </div>
    <b style="float: right;padding-right: 5%">鹰嘴豆SSR基因数据库查询</b>
</div>
</body>
</html>
