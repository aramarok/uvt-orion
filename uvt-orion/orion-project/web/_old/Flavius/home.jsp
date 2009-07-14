<html>
<head>
<title>User Home</title>
<link href="style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="calendar.css" />
</head>
<body style="padding-top: 0px; margin-top: 0px;">
	<%@ include file="chooseMenu.jsp" %>
	<TABLE WIDTH=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<tr bgcolor="#8DA3B1" height="90">
			<td colspan=2 class="header_text" style="padding-left: 45px; padding-top: 50px;">
			Home</td>
		</tr>	
		<TR BGCOLOR="#DFE8F0">
			<TABLE WIDTH=90% HEIGHT=85% ALIGN=CENTER CELLSPACING=0 BORDER=0>
				<TR BGCOLOR="#DFE8F0">
					<TD CLASS="table_header" COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
					Bine ati venit!
					</TD>
				</TR>
			</TABLE>
		</TR>
	</TABLE>
	<jsp:include page="menus/statusBar.jsp" />
</body>
</html>