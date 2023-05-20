<%--
  Created by IntelliJ IDEA.
  User: 86198
  Date: 2022/5/9
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Left</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <style>

        a {
            text-decoration:none;
        }
        html{
            height: 100%;
        }
        body {
            margin: 0;
            padding: 0;
            background-color:whitesmoke;
            font-family:方正粗黑宋简体;
            color:burlywood;
            font-size: 30px;
        }
        #Menu {
            margin: 0;
            padding: 0;
            width: 250px;
            background: none repeat scroll 0 0 #D8EBF7;
            list-style: none outside none;
            margin-left: 3px;
            border-top: 3px solid darkkhaki;
        }
        #Menu .level1 {
            color:lightyellow;
            font-size: 20px;
            font-weight: bold;
            padding-bottom: 1px;
            cursor: pointer;
        }
        #Menu .level1 .level1Style {
            height: 40px;
            padding-left: 25px;
            padding-top: 5px;
            width: 250px;
            margin-bottom: -4px
        }
        #Menu .level1 .level1Style .Icon {
            margin-top: -2px;
        }
        #Menu .level1 .MenuLevel2 {
            background: none repeat scroll 0 0 #D8EBF7;
            list-style: none outside none;
            margin: 0;
            padding: 0;
        }
        #Menu .level1 .MenuLevel2 .level2Style{

            color:burlywood;
            font-weight: normal;
            border-top: 1px solid #EFF6FB;
            height: 39px;
            padding-left: 50px;
            padding-top: 10px;
            width: 250px;
            background-color: whitesmoke;
            background-repeat: no-repeat;
            background-position: 29px center;
        }

    </style>
</head>
<body>
<ul id="Menu">
    <li class="level1">

        <div onClick="menuClick(this);" class="level1Style">
            <a target="Right" href="<%=request.getContextPath()%>/index/showAll">信息浏览</a>
        </div>
        <ul class="MenuLevel2">
            <li class="level2 level2Style">
                <a target="Right" href="<%=request.getContextPath()%>/index/ssrInfo">SSR基因查询</a>
            </li>
            <li class="level2 level2Style">
                <a target="Right" href="<%=request.getContextPath()%>/index/ssrGenome">基因组查询</a>
            </li>
            <li class="level2 level2Style">
                <a target="Right" href="<%=request.getContextPath()%>/index/ssrPrimer">引物查询</a>
            </li>
            <li class="level2 level2Style">
                <a target="Right" href="<%=request.getContextPath()%>/index/ssrGene">基因查询</a>
            </li>
            <li class="level2 level2Style">
                <a target="Right" href="<%=request.getContextPath()%>/index/advsearch">高级搜索</a>
            </li>
        </ul>
    </li>
</ul>
</body>
</html>
