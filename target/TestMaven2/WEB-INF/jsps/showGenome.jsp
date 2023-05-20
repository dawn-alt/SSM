<%--
  Created by IntelliJ IDEA.
  User: 86198
  Date: 2022/5/9
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>showGenome</title>
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
        .content {
            float:left;
            clear:right;
            /*height:700px;*/
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
    <form action="<%=request.getContextPath()%>/genome/showGenome1" method="post">
         <label>SSR_ID</label>
        <input type="text" name="SSR_ID" class="textbox textbox_225"placeholder="输入SSR_ID"> &nbsp;
        <input type="submit" value="查询" class="btn"/>
    </form>

    <form action="<%=request.getContextPath()%>/genome/showGenome2" method="post">
        <label>chromosome</label>
        <select name="chromosome">
            <option>select</option>
            <option>Pseudo molecules</option>
            <option>Contigs</option>
            <option>Scaffolds</option>
        </select>
        <input type="submit" value="查询" class="btn"/>
    </form>

    <form action="<%=request.getContextPath()%>/genome/showGenome" method="post">
        <input type="submit" value="查询" class="btn"/>
        <table class="table table-hover" width="500px" style="display:block;overflow-y:auto;">
            <tr>
                <th>SSR_ID</th>
                <th>Chromosome</th>
                <th>Start</th>
                <th>End</th>
            </tr>
            <c:forEach items="${genomeList}" var="genome">
                <tr>
                    <td>${genome.SSR_ID}</td>
                    <td>${genome.chromosome}</td>
                    <td>${genome.SSR_start}</td>
                    <td>${genome.SSR_end}</td>
                </tr>
            </c:forEach>
        </table>
    </form>
</div>
</body>
</html>
