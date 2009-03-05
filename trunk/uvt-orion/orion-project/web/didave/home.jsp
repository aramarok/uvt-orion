<html>
<head>
<title>User Home</title>
<link href="style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="calendar.css" />
</head>
<body style="padding-top: 0px; margin-top: 0px;">

	<%@ include file="chooseMenu.jsp" %>
	
		<TABLE width=100% height=100% CELLSPACING=0 BORDER=0>
			<tr class="content_header" height=20px>
				<td style="padding-left: 45px; padding-top: 5px;">
				Home
				</td>
			</tr>	
			<TR class="contents" height=100%>
				<TD ALIGN=CENTER>
					<font class="font_home">
						Bine ati venit!
					</font>
				</TD>
			</TR>
		</TABLE>
		</td>
	</TR>
	
	<tr>
	<td  colspan=2>
	<jsp:include page="menus/statusBar.jsp" />
	</td>
	</tr>
	</table>
</body>
</html>
