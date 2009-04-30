<%@page import="com.uvt.team08.orion.meta.Tables"%>
  
<html>
<head>
<title>Alegere Lista</title>
</head>
<body>
	<%@ include file="chooseMenu.jsp" %>
	
	<FORM NAME="Forma" ACTION="addRecord.jsp" METHOD ="GET">
	<table width=100% height=100% CELLSPACING=0 BORDER=100>
		<tr>
			<td colspan=2 class="content_header">
			Alegere Lista
			</td>
		</tr>			
		<TR>
			<td colspan=2 ALIGN=CENTER>
			<P><BR></P>
			</TD>
		</TR>
		<TR>
			<td colspan=2 ALIGN=CENTER>
			<P><BR></P>
			</TD>
		</TR>
		<TR>
		<TD class="field_name" COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
			Lista:
		</TD>
		<TD class="field_value" COLSPAN=1 BGCOLOR="#DFE8F0">
				<SELECT NAME="Lista" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
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
					
					<%
					
						Set<String> keys = Tables.names.keySet();
					
						for (String key : keys) {
							out.println("<OPTION value = \"" + key + "\">"
								+ Tables.names.get(key) + "</OPTION>");
						}
					
					%>
					
				</SELECT>
		</TD>			
	</TR>
	<TR>
		<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="#DFE8F0">
		<P><BR></P>
		</TD>			
		<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
			<P><INPUT class="buton" TYPE=SUBMIT NAME="submit_btn" VALUE="Alege">
			</P>
		</TD>			
	</TR>
	</TABLE>
	</FORM>
	</td>
	</tr>
	<tr>
	<td colspan=2>
	<jsp:include page="menus/statusBar.jsp" />
	</td>
	</tr>
	</table>	
</body>
</html>