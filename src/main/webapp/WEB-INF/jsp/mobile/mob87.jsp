<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp" %>
<%@ include file="/WEB-INF/jsp/commons/meta.jsp" %>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="${ctx}/css/mob87.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="${ctx}/css/reset.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
	<script type="text/javascript" src="${ctx}/script/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="${ctx}/script/vue.js"></script>
	<script>
		var _ctx = "${ctx}";
	</script>
</head>
<body>
<div class="mob">
	<div class="mob-layout">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2">
				<h3>Nasional</h3>
			</div>
		</div>
		<div class="row" id="mob87">
			<div class="col-sm-1"></div>
			<div class="col-sm-2">
				<ul>
					<li><a href="" style="background: #005E8A;">View:</a></li>
					<li><a href="javascript:void(0);" v-on:click="update">NAS:</a></li>
					<li><a href="javascript:void(0);" v-on:click="update">TREG-1:</a></li>
					<li><a href="javascript:void(0);" v-on:click="update">TREG-2:</a></li>
					<li><a href="javascript:void(0);" v-on:click="update">TREG-3:</a></li>
					<li><a href="javascript:void(0);" v-on:click="update">TREG-4:</a></li>
					<li><a href="javascript:void(0);" v-on:click="update">TREG-5:</a></li>
					<li><a href="javascript:void(0);" v-on:click="update">TREG-6:</a></li>
					<li><a href="javascript:void(0);" v-on:click="update">TREG-7:</a></li>
				</ul>
			</div>
			<div class="col-sm-9">
				<div id="echart1" style="height: 300px;width: 100%;">

				</div>
			</div>
		</div>
	</div>
</div>
</body>
<script type="text/javascript" src="${ctx}/js/mobile/mob87.js"></script>
<script src="http://echarts.baidu.com/build/dist/echarts-all.js"></script>
</html>