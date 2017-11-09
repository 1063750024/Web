<%@page import="java.net.URLDecoder"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">

<head>
  <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>小葱拌豆腐登录页面</title>
    <meta name="description" content="这是一个 login页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="static/css/amazeui.min.css" />
    <link rel="stylesheet" href="static/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="static/css/app.css">
    

</head>

<body data-type="login">
    <script src="assets/js/theme.js"></script>
    <div class="am-g tpl-g">
        <!-- 风格切换 -->
        <div class="tpl-skiner">
            <div class="tpl-skiner-toggle am-icon-cog">
            </div>
            <div class="tpl-skiner-content">
                <div class="tpl-skiner-content-title">
                    选择主题
                </div>
                <div class="tpl-skiner-content-bar">
                    <span class="skiner-color skiner-white" data-color="theme-white"></span>
                    <span class="skiner-color skiner-black" data-color="theme-black"></span>
                </div>
            </div>
        </div>
        <div class="tpl-login">
            <div class="tpl-login-content">
                <div class="tpl-login-logo">

                </div>

<%
    String userName = "";
    String password = "";
    //获取当前站点的所有Cookie
    Cookie[] cookies = request.getCookies();
    if(cookies!=null){
    for (int i = 0; i < cookies.length; i++) {//对cookies中的数据进行遍历，找到用户名、密码的数据
        if ("username".equals(cookies[i].getName())) {
            userName = URLDecoder.decode(cookies[i].getValue(),"utf-8");
        } 
    }
    }
%>
                <form action="doLogin.jsp" method="post" class="am-form tpl-form-line-form">
                    <div class="am-form-group">
                        <input type="text"  value="<%=userName%>" class="tpl-form-input" id="user-name"  name="userName" placeholder="请输入账号">

                    </div>

                    <div class="am-form-group">
                        <input type="password"  class="tpl-form-input" id="user-name" name="password" placeholder="请输入密码">

                    </div>
                    <div class="am-form-group tpl-login-remember-me">
                        <label for="remember-me">
                        <input id="remember-me" type="checkbox" onclick="remember();">
                        记住密码
                         </label>
                    </div>
                    <div class="am-form-group">
                        <button type="submit" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn">提交</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="http://cdn.bootcss.com/amazeui/2.7.2/js/amazeui.min.js"></script>
    <script src="static/js/app.js"></script>
    
    <script type="text/javascript">
    //记住密码功能
   function remember(){
    var remFlag = $("#remember-me").is(":checked");
    if(remFlag==true){ //如果选中设置remFlag为1
        //cookie存用户名和密码,回显的是真实的用户名和密码,存在安全问题.
        var conFlag = confirm("记录密码功能不宜在公共场所(如网吧等)使用,以防密码泄露.您确定要使用此功能吗?");
        if(conFlag){ //确认标志
            $("#remFlag").val("1");
        }else{
            $("input[type='checkbox']").removeAttr('checked');
            $("#remFlag").val("");
        }
    }else{ //如果没选中设置remFlag为""
        $("#remFlag").val("");
    }
}
    
    </script>

</body>

</html>