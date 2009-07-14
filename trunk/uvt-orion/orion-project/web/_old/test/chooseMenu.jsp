<%@ page import="com.uvt.team08.orion.domain.model.Right" %>
<%@ include file="auth.jsp" %>
	
<%
if (usr_role == Right.ADMINISTRATOR) 
	{
%>
	<jsp:include page="menus/menuAdmin.jsp" />
<%	
	}
else if (usr_role == Right.USER)
	{
%>
	<jsp:include page="menus/menuUser.jsp" />
<%		
	}
%>
