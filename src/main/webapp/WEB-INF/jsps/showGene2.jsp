<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86198
  Date: 2022/6/17
  Time: 15:12
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
    </style>
</head>
<body>
<div class="content">
    <form action="<%=request.getContextPath()%>/gene/showGene2" method="post">
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
