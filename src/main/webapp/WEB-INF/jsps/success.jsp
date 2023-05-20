<%--
  Created by IntelliJ IDEA.
  User: 86198
  Date: 2021/7/16
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h5>登录成功！</h5>
    <h4>选择功能：</h4>
    <form action="<%=request.getContextPath()%>/user/getUser" method="post">
        <input type="submit" value="查询所有用户">
    </form>

</body>
</html>
