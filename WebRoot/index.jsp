<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="assert/js/jquery.min.js"></script>
<script type="text/javascript" src="assert/js/JQuery.BlockUI.min.2.39.js"></script>
<script type="text/javascript">
	$(function() {
		$('#button').click(function() {
			$.ajax({
				url : 'demo.php',
				type : "POST",
				data : ({
					name : 'wang',
					location : 'AJAX'
				}),
				beforeSend : Request,
				success : Response,
			});
		});

	});
	function Request() {
		$.blockUI({ message: '<img src="assert/image/loading.gif" width="35" height="35" />' });
	}
	function Response(data) {
		$('#loading_img').html(data);
	}
</script>
</head>

<body>
	<div id="result">
	<div id="loading_img"></div>
		<ul>
			<li>1</li>
			<li>1</li>
			<li>1</li>
			<li>1</li>
		</ul>
	</div>
	<input type="button" name="demo" id="button" value="TEST" />
</body>
</html>
