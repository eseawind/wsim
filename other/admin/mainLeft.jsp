<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
		
<style type="text/css">
	td{
		height: 30px;
	}
	
	a {
	color:#999; 
  	text-decoration: none;
	}
	
	body{
		background-color: white;
	}
</style>

	
	
	</head>

	<body>
		<table align="right">
			
			<tr>
				<td>
					<a href="admin_listUser" target="mainFrame">�û�����</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="admin_listQuestion" target="mainFrame">�������</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="admin_listAnswer" target="mainFrame">�𰸹���</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td>
			</tr>
			<tr>
				<td>
					<a href="admin_listComment" target="mainFrame">���۹���</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="admin_listTopic" target="mainFrame">�������</a>
				</td>
			</tr>
			<tr>
				<td>
					<hr/>
				</td>
			</tr>
			<tr>
				<td>
					<a href="admin/addAdmin.jsp" target="mainFrame">��ӹ���Ա</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="main!count" target="mainFrame">����ͳ��</a>
				</td>
			</tr>
			
		</table>



	</body>
</html>
