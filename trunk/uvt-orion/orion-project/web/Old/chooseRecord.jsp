<html>
<head>
<title>Adaugare Lucrare</title>
</head>
<body>
<FORM NAME="Forma" ACTION="addRecord.jsp" METHOD ="GET">
	<jsp:include page="menus/menuUser.jsp" />
	<TABLE WIDTH=90% HEIGHT=30% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<COL WIDTH=40%>
		<COL WIDTH=50%>			
		<TR>
			<TD COLSPAN=2 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>
		<TR>
			<TD COLSPAN=2 ALIGN=CENTER BGCOLOR="66CCFF">
			<P ALIGN=CENTER><FONT FACE="Arial, sans-serif" SIZE=4 COLOR="000000">ALEGETI LISTA</FONT>
			</P>
			</TD>
		</TR>
		<TR>
			<TD COLSPAN=2  ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>
	<TR>
		<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Lista: </FONT>
			</P>
		<TD COLSPAN=1 BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif"><SELECT NAME="Lista" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
					<OPTION SELECTED>Lista 1								
					<OPTION>Lista 2</OPTION>	
					<OPTION>Lista 3</OPTION>							
					<OPTION>Lista 4</OPTION>	
					<OPTION>Lista 5</OPTION>	
					<OPTION>Lista 6</OPTION>							
					<OPTION>Lista 7</OPTION>							
					<OPTION>Lista 8</OPTION>							
					<OPTION>Lista 9</OPTION>	
					<OPTION>Lista 10</OPTION>	
				</SELECT></FONT></P>
		</TD>			
	</TR>
	<TR>
		<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
		</TD>		
		<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>	
		</TD>	
	</TR>
	<TR>
		<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="66CCFF">
		<P><BR></P>
		</TD>			
		<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
			<P><INPUT TYPE=SUBMIT NAME="submit_btn" VALUE="Alege" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
			</P>
		</TD>			
	</TR>
	</TABLE>
	<TABLE WIDTH=90% HEIGHT=50% ALIGN=CENTER CELLSPACING=0 BORDER=0>
	<TR>
		<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
		</TD>			
	</TR>	
	</TABLE>
	<jsp:include page="menus/statusBar.jsp" />	
</FORM>
</body>
</html>