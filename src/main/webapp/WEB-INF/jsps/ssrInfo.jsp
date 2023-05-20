<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>鹰嘴豆SSR基因数据库查询系统</title>
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
            width:80%;
            height:700px;
            background:white;
            font-family:方正粗黑宋简体;
            font-size: 20px;
            color:#122b40;
            background:url("<%=request.getContextPath()%>/resources/images/aboutour.jpg");
            background-repeat: repeat-y;
            background-size: 100%,100%;
            line-height: 175%;
        }

    </style>
</head>
<body>
<div class="content">
            <a>以下条件任选一个</a><br>
            <form action="<%=request.getContextPath()%>/ssrInfo/show1" method="post">
                <label>根据SSR motif的复杂类型</label>
                <select name="ssrType">
                    <option value="">select</option>
                    <option value="simple">simple</option>
                    <option value="compound">compound</option>
                </select>
                    <input type="submit" value="查询" class="btn"/>
            </form>

            <form action="<%=request.getContextPath()%>/ssrInfo/show2" method="post">
                <label>根据简单SSR的重数</label>
                <select name="simpleType">
                    <option value="">select</option>
                    <option>Di</option>
                    <option value="Tri">Tri</option>
                    <option value="Tetra">Tetra</option>
                    <option value="Penta">Penta</option>
                    <option value="Hexa">Hexa</option>
                </select>
                    <input type="submit" value="查询" class="btn"/>
            </form>

            <form action="<%=request.getContextPath()%>/ssrInfo/show3" method="post">
                <label>根据SSR motif长度范围</label>
                    <input type="text" name="minlen" class="textbox textbox_225"placeholder="输入最小长度">
                    <input type="text" name="maxlen" class="textbox textbox_225"placeholder="输入最大长度">
                    <input type="submit" value="查询" class="btn"/>
            </form>

            <form action="<%=request.getContextPath()%>/ssrInfo/show4" method="post">
                <label>根据motif片段模糊查询</label>
                    <input type="text" name="motif" class="textbox textbox_225"maxlength="6" placeholder="最多六个碱基">
                    <input type="submit" value="查询" class="btn"/>
            </form>

    <form action="<%=request.getContextPath()%>/ssrInfo/showSSR" method="post">
        <input type="submit" value="查询" class="btn"/>
        <table class="table table-hover" width="500px" style="display:block;overflow-y:auto;">
            <tr>
                <th>SSR_ID</th>
                <th>Type</th>
                <th>Motif</th>
                <th>Length</th>
            </tr>
            <c:forEach items="${ssrInfoList}" var="SSR_Info">
                <tr>
                    <td>${SSR_Info.SSR_ID}</td>
                    <td>${SSR_Info.SSRType}</td>
                    <td>${SSR_Info.SSR_motif}</td>
                    <td>${SSR_Info.lenSSR}</td>
                </tr>
            </c:forEach>
        </table>
    </form>
</div>

</body>
</html>

