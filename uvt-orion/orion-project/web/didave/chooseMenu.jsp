<%@ page import="com.uvt.team08.orion.domain.model.Right" %> 
<%@ include file="auth.jsp" %>


<TABLE WIDTH=90% Height=90% ALIGN=CENTER cellspacing=0 border=0>
	<TR class="titlu">
		<td align="left" colspan=3 height="50" background="newStyle/images/bgheader.png">
			<img src="newStyle/images/header.png">
		</td>
	</TR>
		
	<TR>
		<td width=10% height=60% colspan="2">
<%
if (usr_role == Right.ADMINISTRATOR) 
	{
%>
	<%@ include file="menus/menuAdmin.jsp" %>
<%
	}
else if (usr_role == Right.USER)
	{
%>
	<jsp:include page="menus/menuUser.jsp" />
<%		
	}
%>
		</td>
		<td height=100% width=90%>
