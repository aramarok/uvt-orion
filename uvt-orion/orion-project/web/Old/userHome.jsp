<html>
<head>
<title>User Home</title>
</head>
<body>
    <%@ page import="com.uvt.team08.orion.domain.model.Right" %>
	<%@ include file="temp/auth.jsp" %>
	
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
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="66CCFF">
				<P>
					<FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
						Bine ati venit!
					</FONT>
				</P>
			</TD>
		</TR>
	</TABLE>
	<jsp:include page="menus/statusBar.jsp" />
</body>
</html>