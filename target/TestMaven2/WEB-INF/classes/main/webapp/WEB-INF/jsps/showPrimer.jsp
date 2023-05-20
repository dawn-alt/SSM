<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86198
  Date: 2022/5/9
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>showPrimer</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap1.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style0.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/sliderStyle.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/sliderStyle.js"></script>
    <style>
        body{
            background: url("<%=request.getContextPath()%>/resources/images/3.jpg");
            background-repeat: no-repeat;
            background-size: 100%,100%;
        }
        .content{
            float:left;
            clear:right;
            height:700px;
            background:white;
            font-family:方正粗黑宋简体;
            font-size: 20px;
            color:#122b40;
            background:url("<%=request.getContextPath()%>/resources/images/aboutour.jpg");
            background-repeat: no-repeat;
            background-size: 100%,100%;
            line-height: 175%;
        }
        .textbox{border:1px #139667 solid;height:26px;line-height:26px;padding:5px;font-size:12px; vertical-align:middle;}
        .textbox_295{width:295px;height: 50px}
        .textbox_225{width:225px;}
    </style>
</head>
<body>
<div class="content">
   <a> 以下条件任选一个 </a><br>
   <form action="<%=request.getContextPath()%>/primer/showPrimer1" method="post">
       <label>SSR_ID</label>
       <input type="text" name="SSR_ID" class="textbox textbox_225"placeholder="输入SSR_ID">
       <input type="submit" value="查询" class="btn"/>
   </form>

   <form action="<%=request.getContextPath()%>/primer/showPrimer2" method="post">
       <label>Tm（熔融温度）</label>
       <input type="text" name="minTm" class="textbox textbox_225"placeholder="输入最小温度">
       <input type="text" name="maxTm" class="textbox textbox_225"placeholder="输入最大温度">
       <input type="submit" value="查询" class="btn"/>
   </form>

    <form action="<%=request.getContextPath()%>/primer/showPrimer3" method="post">
        <label>Amplicon_length</label>
         <input type="text" name="minAmpli" class="textbox textbox_225"placeholder="输入最小长度">
         <input type="text" name="maxAmpli" class="textbox textbox_225"placeholder="输入最大长度">
         <input type="submit" value="查询" class="btn"/>
   </form>

    <form action="<%=request.getContextPath()%>/primer/showPrimer" method="post">
        <input type="submit" value="查询" class="btn"/>
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
