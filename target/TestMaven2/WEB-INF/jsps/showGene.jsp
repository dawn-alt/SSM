<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86198
  Date: 2022/6/17
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>showGene</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap1.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style0.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/sliderStyle.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/sliderStyle.js"></script>
    <style>
        <%--body{--%>
        <%--    background: url("<%=request.getContextPath()%>/resources/images/3.jpg");--%>
        <%--    background-repeat: no-repeat;--%>
        <%--    background-size: 100%,100%;--%>
        <%--}--%>
        .content{
            float:left;
            clear:right;
            width: 80%;
            height:700px;
            background:white;
            font-family:方正粗黑宋简体;
            font-size: 20px;
            color:#122b40;
            background:url("<%=request.getContextPath()%>/resources/images/3.jpg");
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
    <form action="<%=request.getContextPath()%>/gene/showGene1" method="post">
        <label>SSR_ID</label>
        <input type="text" name="SSR_ID" class="textbox textbox_225"placeholder="输入SSR_ID">
        <input type="submit" value="查询" class="btn"/>
    </form>

    <form action="<%=request.getContextPath()%>/gene/showGene2" method="post">
        <label>geneID</label>
        <input type="text" name="geneID" class="textbox textbox_225"placeholder="输入geneID">
        <input type="submit" value="查询" class="btn"/>
    </form>

    <form action="<%=request.getContextPath()%>/gene/showGene3" method="post">
        <label>genic_Nongenic</label>
        <select name="genic_nongenic">
            <option>genic</option>
            <option>nongenic</option>
        </select>
        <input type="submit" value="查询" class="btn"/>
    </form>

    <form action="<%=request.getContextPath()%>/gene/showGene" method="post">
        <input type="submit" value="查询" class="btn"/>
        <table class="table table-hover" width="500px" style="display:block;overflow-y:auto;">
            <tr>
                <th>SSR_ID</th>
                <th>gene_start</th>
                <th>gene_end</th>
                <th>orientation</th>
                <th>entry_names</th>
                <th>protein_names</th>
                <th>organism</th>
                <th>genic</th>
                <th>geneID</th>
            </tr>
            <c:forEach items="${geneList}" var="gene">
                <tr>
                    <td>${gene.SSR_ID}</td>
                    <td>${gene.gene_start}</td>
                    <td>${gene.gene_end}</td>
                    <td>${gene.gene_orientation}</td>
                    <td>${gene.entry_names}</td>
                    <td>${gene.protein_names}</td>
                    <td>${gene.organism}</td>
                    <td>${gene.genic_nongenic}</td>
                    <td>${gene.geneID}</td>
                </tr>
            </c:forEach>
        </table>
    </form>
</div>
</body>
</html>
