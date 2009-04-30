<%@ page import="com.uvt.team08.orion.domain.model.Right" %>
<%@ include file="auth.jsp" %>


<TABLE WIDTH=90% Height=90% ALIGN=CENTER cellspacing=0 border=0>
	<TR class="titlu">
		<td align=center valign=center colspan=2>
			Sistem pentru evidenta acititatii stiintifice a membrilor universitatii 
		</td>
	</TR>
	
	<TR>
		<td colspan=2>
		<%@ include file="menus/statusBar.jsp" %>
		</td>
	</TR>
		
	<TR>
		<td width=10% height=100%>
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
		