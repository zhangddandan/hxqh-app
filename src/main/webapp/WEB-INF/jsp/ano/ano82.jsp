<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/commons/taglibs.jsp" %>
<%@ include file="/WEB-INF/jsp/commons/meta.jsp" %>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="${ctx}/css/ano.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="${ctx}/css/reset.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
	<script type="text/javascript" src="${ctx}/script/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="${ctx}/script/vue.js"></script>
	<script>
		var _ctx = "${ctx}";
	</script>
</head>
<body>
<div class="ano-layout">
	<h4>Gamas Node Metro & Access</h4>
	<table class="ano82" cellpadding="2" id="ano82-data">
		<thead>
			<tr style="height: 50px;">
				<td>Priority</td>
				<td>Incident</td>
				<td>Date</td>
				<td>Alarm Summary</td>
				<td>Status</td>
				<td>Symptom</td>
				<td>Solution</td>
			</tr>
		</thead>
		<tbody>
			<tr v-for="item in anoList">
				<td>{{item.ioc1}}</td>
				<td>{{item.ioc2}}</td>
				<td>{{item.ioc3}}</td>
				<td>{{item.ioc4}}</td>
				<td>{{item.ioc5}}</td>
				<td>{{item.ioc6}}</td>
				<td>-</td>
			</tr>
		</tbody>
	</table>
</div>
</body>
<script type="text/javascript" src="${ctx}/js/ano/ano82.js"></script>
</html>