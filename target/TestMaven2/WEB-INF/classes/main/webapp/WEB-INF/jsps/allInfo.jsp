<%--
  Created by IntelliJ IDEA.
  User: 86198
  Date: 2022/5/9
  Time: 23:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>关联查询</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap1.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style0.css">
    <%--    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/addCSS.css">--%>
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
            background-size: 150%,150%;
            line-height: 175%;
        }
    </style>
</head>
<body>
<div class="content">
    <a>    以下条件任选一个或多个</a><br><br>

    <form action="<%=request.getContextPath()%>/allssrInfo/showAdv" method="post">
        <a>根据SSR motif的复杂类型</a><br>
        <a><select name="ssrType">
            <option>select</option>
            <option value="simple">simple</option>
            <option value="compound">compound</option>
        </select><br><br></a>

        <a>根据简单SSR的重数</a><br>
        <a><select name="simpleType">
            <option>select</option>
            <option>Di</option>
            <option>Tri</option>
            <option>Tetra</option>
            <option>Penta</option>
            <option>Hexa</option>
        </select>
            <br><br>
        </a>

        <a>根据染色体类型</a><br>
        <a><select name="chromosome">
            <option>select</option>
            <option>Contigs</option>
            <option>Scaffolds</option>
            <option>Ca1</option>
            <option>Ca2</option>
            <option>Ca3</option>
            <option>Ca4</option>
            <option>Ca5</option>
            <option>Ca6</option>
            <option>Ca7</option>
            <option>Ca8</option>
        </select>
            <br><br>
        </a>
        <a>根据motif片段模糊查询</a><br>
        <a>
            <input type="text" name="motif" class="textbox textbox_225"maxlength="6" placeholder="最多六个碱基">
        </a><br><br>
        <input type="submit" value="查询" class="btn"/>
    </form>

</div>
</body>
</html>
