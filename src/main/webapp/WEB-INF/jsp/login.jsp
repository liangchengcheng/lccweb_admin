<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<script type="text/javascript"
	src="<%=path%>/resource/amazeui/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=path%>/resource/amazeui/js/amazeui.min.js"></script>

<link rel="stylesheet"
	href="<%=path%>/resource/amazeui/css/amazeui.min.css" />
<link rel="stylesheet" href="<%=path%>/resource/amazeui/admin.css">

<script type="text/javascript">
	function changeImg() {
		var imgSrc = $("#imgObj");
		var src = imgSrc.attr("src");
		imgSrc.attr("src", chgUrl(src));
	}
	//时间戳   
	//为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳   
	function chgUrl(url) {
		var timestamp = (new Date()).valueOf();
		if ((url.indexOf("?") >= 0)) {
			url = url.substring(0, url.length - 24);
		}
		
		url = url + "?timestamp=" + timestamp;
		return url;
	}
</script>
<title>登录界面</title>
</head>
<body>
	<div class="header">
		<div class="am-g">
			<h2>抽抽网站管理系统</h2>
			<p>v1.1.0</p>
		</div>
		<br>
	</div>
	<div class="am-g">
		<div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
			<form method="post" class="am-form" action="<%=path %>/user.html">
				<label>账号:</label> <input type="text" name="username" value="">
				<br> <label>密码:</label> <input type="password" name="password"
					value=""> <br> <label for="email">验证码:</label>
				<div class="am-form-group">
					<div class="am-u-sm-2 am-padding-0">
						<input type="text" name="yzm" value="">
					</div>
					<div class="am-u-sm-10 am-animation-fade">
						<img id="imgObj" alt="验证码" src="<%=path%>/code.html" /> <a
							href="#" onclick="changeImg()">换一张</a>
					</div>
				</div>
				<br> <br>
				<div class="am-cf">
					<input type="submit" value="登 录"
						class="am-btn am-btn-primary am-fl">
				</div>
			</form>
			<hr>
		</div>
	</div>
</body>
</html>