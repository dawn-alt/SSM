
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>关于我们</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap1.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style0.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/sliderStyle.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/frame.css">
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
    </style>
</head>
<body>
<div id="Head_1">
    <div id="Head_1_Logo">
        <img src="<%=request.getContextPath() %>/resources/images/1.png" width="90px" height="75px"/>
    </div>

    <div id="Head_1_UserWelcome" >
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right" >
                <li><a href="<%=request.getContextPath()%>/mainPage/homepage" class="active">首页</a></li>
                <li><a href="<%=request.getContextPath()%>/mainPage/aboutour" class="active">关于我们</a></li>
                <li><a href="<%=request.getContextPath()%>/mainPage/search" class="active">搜索</a></li>
<%--                <li><a href="<%=request.getContextPath()%>/index/admin">管理员登录</a></li>--%>
            </ul>
        </div>
    </div>
    <b style="padding-right: 1%">ChickPeaSsrDB</b>
</div>
<div class="middle">
    <div class="left">
        <table>
            <h4>*联系我们</h4>
            <h4>For suggestions/feedback kindly contact</h4>
            <tr>  <td><label>电话</label></td><td><label>19871210828</label></td> </tr>
            <tr></tr>
            <tr>  <td><label>邮箱</label></td><td><label>1965245636@qq.com</label></td>  </tr>
            <tr></tr>
            <tr>  <td><label>地址</label></td><td><label>武汉市洪山区华中农业大学</label></td> </tr>
        </table>

    </div>

    <div class="content" align="center">
        <h2 style="font-family:方正粗黑宋简体;font-size: 30px; padding-top: 10px">关于我们</h2>
        <p>ChickPeaSSRDB是一个搜索鹰嘴豆简单重复序列的资源网站，</p>
        <p>为鹰嘴豆育种群体提供了有价值的标记信息，</p>
        <p>用户可以使用这个数据库来查找相关标记信息，引物信息，基因组信息</p>
        <br>
        <p>ChickPeaSSRDB可以根据SSR的简单型和复合型，基序重复模式，</p>
        <p>定制重复基序的存在和基因组定位进行挖掘。</p>
        <br>
        <p>该数据库是基于SSR标记在作物及其基因型开发和综合改良中的应用而设计的，</p>
        <p>我们希望它能提供一种简化和直接的方法。</p>
        <p>该网站主要针对那些希望获得SSR标记信息的人;</p>
        <p>例如，它们所依据的序列，基因型或非基因型SSRs的类型，并获得用于识别它们的引物。</p>

    </div>

<%--    <div class="right">--%>
<%--        <form action="<%=request.getContextPath()%>/about/sendCustomerText" method="post" class="survey" onsubmit="return checkForm2()">--%>
<%--            <h4>*这是一份用户体验问卷</h4>--%>
<%--            <h4>口感打分：</h4>--%>
<%--            <input type="radio" name="flavor" required="" value="不喜欢">不喜欢--%>
<%--            <input type="radio" name="flavor" required="" value="一般">一般--%>
<%--            <input type="radio" name="flavor" required="" value="非常好">非常好--%>

<%--            <h4>外观打分：</h4>--%>
<%--            <input type="radio" name="outlook" id="l1" required="" value="不喜欢">不喜欢--%>
<%--            <input type="radio" name="outlook" id="l2" required="" value="一般">一般--%>
<%--            <input type="radio" name="outlook" id="l3" required="" value="非常好">非常好--%>

<%--            <h4>服务打分：</h4>--%>
<%--            <input type="radio" name="service" id="s1" required="" value="不喜欢">不喜欢--%>
<%--            <input type="radio" name="service" id="s2" required="" value="一般">一般--%>
<%--            <input type="radio" name="service" id="s3" required="" value="非常好">非常好--%>


<%--            <textarea name="feedback" class="textinput" placeholder="请献上您宝贵的意见或建议！"></textarea>--%>

<%--            &nbsp;&nbsp;<input type="submit" value="提交" class="btn">--%>
<%--            <h4>据说提交的都是小可爱哦！比心♥</h4>--%>
<%--            <script type="text/javascript">--%>
<%--                function checkForm2() {--%>
<%--                    alert('提交成功！感谢您的反馈！');--%>
<%--                    return true;--%>
<%--                }--%>
<%--            </script>--%>
<%--        </form>--%>
<%--    </div>--%>

    <div class="foot">
        <div class="foot-text">
<%--            <h3>@猫仔茶</h3>--%>
<%--            <p>成都总部:成都市郫都区红旗大道北段国家信息中心四楼405</p>--%>
<%--            <p>武汉分公司:武汉市洪山区狮子山街道华中农业大学荟园区</p>--%>
<%--            <p>版权所有：猫仔茶企业文化有限公司加盟热线:xxx-xxx-xxx投诉热线: xxx-xxx-xxx </p>--%>
        </div>
    </div>
</div>
</body>
</html>
