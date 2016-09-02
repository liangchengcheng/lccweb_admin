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
<title>Amaze UI Admin index Examples</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="/i/favicon.png">
<link rel="apple-touch-icon-precomposed" href="/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />

<script type="text/javascript"
	src="<%=path%>/resource/amazeui/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=path%>/resource/amazeui/js/amazeui.min.js"></script>

<link rel="stylesheet"
	href="<%=path%>/resource/amazeui/css/amazeui.min.css" />

<link rel="stylesheet" href="http://amazeui.org/css/admin.css" />
</head>

<body>
	<header class="am-topbar admin-header am-topbar-inverse">
	<div class="am-topbar-brand">
		<p class="am-text-lg">抽抽网站管理系统</p>
	</div>

	<button
		class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
		data-am-collapse="{target: '#topbar-collapse'}">
		<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
	</button>

	<div class="am-collapse am-topbar-collapse" id="topbar-collapse">
		<ul
			class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
			<li class="am-dropdown" data-am-dropdown><a
				class="am-dropdown-toggle" data-am-dropdown-toggle
				href="javascript:;"> <span class="am-icon-user"></span>梁铖城 <span
					class="am-icon-caret-down"></span>
			</a>
				<ul class="am-dropdown-content">
					<li><a href="admin/quit"><span class="am-icon-power-off"></span>
							退出</a></li>
				</ul></li>
			<li class="am-hide-sm-only"><a href="javascript:;"
				id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span
					class="admin-fullText">开启全屏</span></a></li>
		</ul>
	</div>
	</header>
	<div class="am-cf admin-main">
		<!-- sidebar start -->
		<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
			<div class="am-offcanvas-bar admin-offcanvas-bar">
				<ul class="am-list admin-sidebar-list">
					<li><a href="admin-index.html"><span class="am-icon-home"></span>
							首页</a></li>
					<li class="admin-parent"><a class="am-cf"
						data-am-collapse="{target: '#collapse-nav'}"><span
							class="am-icon-file"></span> 页面模块 <span
							class="am-icon-angle-right am-fr am-margin-right"></span></a>
						<ul class="am-list am-collapse admin-sidebar-sub am-in"
							id="collapse-nav">
							<li><a href="admin-user.html" class="am-cf"><span
									class="am-icon-check"></span> 个人资料<span
									class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
							<li><a href="admin-help.html"><span
									class="am-icon-puzzle-piece"></span> 帮助页</a></li>
							<li><a href="admin-gallery.html"><span
									class="am-icon-th"></span> 相册页面<span
									class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
							<li><a href="admin-log.html"><span
									class="am-icon-calendar"></span> 系统日志</a></li>
							<li><a href="admin-404.html"><span class="am-icon-bug"></span>
									404</a></li>
						</ul></li>
					<li><a href="admin-table.html"><span class="am-icon-table"></span>
							表格</a></li>
					<li><a href="admin-form.html"><span
							class="am-icon-pencil-square-o"></span> 表单</a></li>
					<li><a href="#"><span class="am-icon-sign-out"></span> 注销</a></li>
				</ul>

				<div class="am-panel am-panel-default admin-sidebar-panel">
					<div class="am-panel-bd">
						<p>
							<span class="am-icon-bookmark"></span> 公告
						</p>
						<p>时光静好，与君语；细水流年，与君同。—— Amaze UI</p>
					</div>
				</div>

				<div class="am-panel am-panel-default admin-sidebar-panel">
					<div class="am-panel-bd">
						<p>
							<span class="am-icon-tag"></span> wiki
						</p>
						<p>Welcome to the Amaze UI wiki!</p>
					</div>
				</div>
			</div>
		</div>
		<!-- sidebar end -->
		<div class="am-modal am-modal-alert" tabindex="-1" id="my-alert">
			<div class="am-modal-dialog">
				<div class="am-modal-hd">复制下面的地址</div>
				<div class="am-modal-bd">
					<?php echo $base_url; ?>
					export/down_app/
					<?php echo $appid; ?>
				</div>
				<div class="am-modal-footer">
					<span class="am-modal-btn">确定</span>
				</div>
			</div>
		</div>


		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				<div class="am-cf am-padding">
					<div class="am-fl am-cf">
						<strong class="am-text-primary am-text-lg">首页</strong> / <small>一些常用模块</small>
					</div>
				</div>

				<ul
					class="am-avg-sm-1 am-avg-md-4 am-margin am-padding am-text-center admin-content-list ">
					<li><a href="#" class="am-text-success"><span
							class="am-icon-btn am-icon-file-text"></span><br />新增APP<br />2300</a></li>
					<li><a href="#" class="am-text-warning"><span
							class="am-icon-btn am-icon-briefcase"></span><br />成交订单<br />308</a></li>
					<li><a href="#" class="am-text-danger"><span
							class="am-icon-btn am-icon-recycle"></span><br />昨日访问<br />80082</a></li>
					<li><a href="#" class="am-text-secondary"><span
							class="am-icon-btn am-icon-user-md"></span><br />在线用户<br />3000</a></li>
				</ul>

				<div class="am-g">
					<div class="am-u-sm-12">
						<table
							class="am-table am-table-bd am-table-striped admin-content-table">
							<thead>
								<tr>
									<th>ID</th>
									<th>文件名</th>
									<th>版本名称</th>
									<th>版本号</th>
									<th>文件大小</th>
									<th>更新时间</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>动态稽查</td>
									<td><a href="#">v1.1.0</a></td>
									<td><a href="#">1.1.0</a></td>
									<td><span class="am-badge am-badge-success">20</span></td>
									<td><a href="#">2016年08月17日16:03:25</a></td>
									<td>
										<div class="am-dropdown" data-am-dropdown>
											<button
												class="am-btn am-btn-default am-btn-xs am-dropdown-toggle"
												data-am-dropdown-toggle>
												<span class="am-icon-cog"></span> <span
													class="am-icon-caret-down"></span>
											</button>
											<ul class="am-dropdown-content">
												<li><a href="#">1. 编辑</a></li>
												<li><a href="#">2. 下载</a></li>
												<li><a href="#">3. 删除</a></li>
											</ul>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

		<footer class="admin-content-footer">
		<hr>
		<p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under
			MIT license.</p>
		</footer>
	</div>
	<!-- content end -->
	</div>
</body>
</html>