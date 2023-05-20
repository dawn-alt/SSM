<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>鹰嘴豆SSR基因数据库</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap1.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style0.css">
</head>
<body>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.min.js" rel="stylesheet"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap.js" rel="stylesheet"></script>

<div id="Head_1">
    <div id="Head_1_Logo">
        <img src="<%=request.getContextPath() %>/resources/images/1.png" width="90px" height="80px"/>
    </div>

    <div id="Head_1_UserWelcome"  >
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="<%=request.getContextPath()%>/mainPage/homepage" class="active">首页</a></li>
                <li><a href="<%=request.getContextPath()%>/mainPage/aboutour" class="active">关于我们</a></li>
                <li><a href="<%=request.getContextPath()%>/mainPage/search" class="active">搜索</a></li>
<%--                <li><a href="<%=request.getContextPath()%>/index/admin">管理员登录</a></li>--%>
            </ul>
        </div>
    </div>
    <b style="padding-right: 1%">ChickPeaSsrDB</b>
</div>

<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active" align="center">
            <img src="<%=request.getContextPath()%>/resources/images/3.jpg" alt="First slide" style="width: 100%">
            <%--                        <div class="carousel-caption">1</div>--%>

        </div>
        <div class="item" align="center">
            <img src="<%=request.getContextPath()%>/resources/images/2.png" alt="Second slide" style="width: 100%">
            <%--                        <div class="carousel-caption">2</div>--%>
        </div>
        <div class="item" align="center">
            <img src="<%=request.getContextPath()%>/resources/images/6.jpg" alt="Third slide" style="width: 100%">
            <%--                        <div class="carousel-caption">3</div>--%>
        </div>
        <div class="item" align="center">
            <img src="<%=request.getContextPath()%>/resources/images/4.jpg" alt="Fourth slide" style="width: 100%">
            <%--                        <div class="carousel-caption">4</div>--%>
        </div>
        <div class="item" align="center">
            <img src="<%=request.getContextPath()%>/resources/images/5.jpg" alt="Fifth slide" style="width: 100%">
            <%--                        <div class="carousel-caption">5</div>--%>
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <%--                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>--%>
        <%--                    <span class="sr-only">Previous</span>--%>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <%--                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>--%>
        <%--                    <span class="sr-only">Next</span>--%>
    </a>
</div>
</body>
</html>