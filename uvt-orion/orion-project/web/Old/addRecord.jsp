<html>
<head>
<title>Adaugare Inregistrare</title>
</head>
<body>
<%!
public String nrlista;
%>

<%
	try 
	{ 
		nrlista=request.getParameter("Lista");
	} 	
	catch (Exception e) 
	{ 
		e.printStackTrace();
	}
%>
		
<%
	if (nrlista.equals("Lista 1")){
%>
	<FORM NAME="Forma" ACTION="addedRecordL1.jsp" METHOD ="GET">
		
		<jsp:include page="menus/menuUser.jsp" />
		
		<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<TR>
				<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
				<P><BR></P>
				</TD>
			</TR>
			<TR>
				<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
				<P ALIGN=CENTER><FONT FACE="Arial, sans-serif" SIZE=5 COLOR="000000">ADAUGARE LUCRARE</FONT>
				</P>
				</TD>
			</TR>	
			
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Titlu Articol: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="TitluArticol" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Autori: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Denumire revista: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Revista" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Volum: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Volum" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Numar: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Numar" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Pagina de inceput: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="PaginaInceput" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Pagina de sfarsit: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="PaginaSfarsit" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Anul: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Anul" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Factor Impact: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="FactorImpact" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>			
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><INPUT TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P>
				<INPUT TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>
<% 
	}
	else if (nrlista.equals("Lista 2")){ 
%>
	<FORM NAME="Forma" ACTION="addedRecordL2.jsp" METHOD ="GET">
		
		<jsp:include page="menus/menuUser.jsp" />
		
		<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<TR>
				<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
				<P><BR></P>
				</TD>
			</TR>
			<TR>
				<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
				<P ALIGN=CENTER><FONT FACE="Arial, sans-serif" SIZE=5 COLOR="000000">ADAUGARE LUCRARE</FONT>
				</P>
				</TD>
			</TR>	
			
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Titlu Articol: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="TitluArticol" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Autori: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Denumire revista: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Revista" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Volum: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Volum" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Numar: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Numar" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Pagina de inceput: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="PaginaInceput" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Pagina de sfarsit: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="PaginaSfarsit" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Anul: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Anul" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>						
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><INPUT TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P>
				<INPUT TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>
<% 
 }
 	else if (nrlista.equals("Lista 3")){ 
%>
	<FORM NAME="Forma" ACTION="addedRecordL3.jsp" METHOD ="GET">
		
		<jsp:include page="menus/menuUser.jsp" />
		
		<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<TR>
				<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
				<P><BR></P>
				</TD>
			</TR>
			<TR>
				<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
				<P ALIGN=CENTER><FONT FACE="Arial, sans-serif" SIZE=5 COLOR="000000">ADAUGARE LUCRARE</FONT>
				</P>
				</TD>
			</TR>	
			
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Titlu Articol: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="TitluArticol" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Autori: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Denumire revista: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Revista" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Volum: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Volum" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Numar: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Numar" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Pagina de inceput: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="PaginaInceput" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Pagina de sfarsit: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="PaginaSfarsit" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Anul: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Anul" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>						
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><INPUT TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P>
				<INPUT TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>
<% 
 } 
  else if (nrlista.equals("Lista 4")){ 
%>
	<FORM NAME="Forma" ACTION="addedRecordL4.jsp" METHOD ="GET">
		
		<jsp:include page="menus/menuUser.jsp" />
		
		<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<TR>
				<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
				<P><BR></P>
				</TD>
			</TR>
			<TR>
				<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
				<P ALIGN=CENTER><FONT FACE="Arial, sans-serif" SIZE=5 COLOR="000000">ADAUGARE LUCRARE</FONT>
				</P>
				</TD>
			</TR>	
			
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Titlu Articol: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="TitluArticol" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Autori: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Denumire volum </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="DenVolum" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Denumire Conferinta: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="DenConferinta" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Locul desfasurarii: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Loc" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Data desfasurarii: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Data" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Pagina de inceput: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="PaginaInceput" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Pagina de sfarsit: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="PaginaSfarsit" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Anul: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Anul" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>						
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><INPUT TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P>
				<INPUT TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>
<% 
 } 
  else if (nrlista.equals("Lista 5")){ 
%>
	<FORM NAME="Forma" ACTION="addedRecordL5.jsp" METHOD ="GET">
		
		<jsp:include page="menus/menuUser.jsp" />
		
		<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<TR>
				<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
				<P><BR></P>
				</TD>
			</TR>
			<TR>
				<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
				<P ALIGN=CENTER><FONT FACE="Arial, sans-serif" SIZE=5 COLOR="000000">ADAUGARE LUCRARE</FONT>
				</P>
				</TD>
			</TR>	
			
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Titlu Conferinta: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="TitluConferinta" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Autori: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Denumire volum </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="DenVolum" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Denumire Manifestarii </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="DenManifestarii" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Locul desfasurarii: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Loc" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Data desfasurarii: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Data" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Pagina de inceput: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="PaginaInceput" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Pagina de sfarsit: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="PaginaSfarsit" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Anul: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Anul" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>						
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><INPUT TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P>
				<INPUT TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>
<% 
 } 
  else if (nrlista.equals("Lista 6")){ 
%>
	<FORM NAME="Forma" ACTION="addedRecordL6.jsp" METHOD ="GET">
		
		<jsp:include page="menus/menuUser.jsp" />
		
		<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<TR>
				<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
				<P><BR></P>
				</TD>
			</TR>
			<TR>
				<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
				<P ALIGN=CENTER><FONT FACE="Arial, sans-serif" SIZE=5 COLOR="000000">ADAUGARE LUCRARE</FONT>
				</P>
				</TD>
			</TR>	
			
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Titlu Monografie </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="TitluMonografie" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Autori: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Editura:  </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Editura" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Localitatea: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Loc" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Anul aparitiei: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="An" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Nr pagini: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="NrPagini" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><INPUT TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P>
				<INPUT TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>

<% 
 } 
  else if (nrlista.equals("Lista 7")){ 
%>
	<FORM NAME="Forma" ACTION="addedRecordL7.jsp" METHOD ="GET">
		
		<jsp:include page="menus/menuUser.jsp" />
		
		<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<TR>
				<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
				<P><BR></P>
				</TD>
			</TR>
			<TR>
				<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
				<P ALIGN=CENTER><FONT FACE="Arial, sans-serif" SIZE=5 COLOR="000000">ADAUGARE LUCRARE</FONT>
				</P>
				</TD>
			</TR>	
			
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Titlu: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Titlu" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Autori: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Editura:  </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Editura" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Localitatea: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Loc" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Anul aparitiei: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="An" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Nr pagini: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="NrPagini" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><INPUT TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P>
				<INPUT TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>
<% 
 } 
  else if (nrlista.equals("Lista 8")){ 
%>
	<FORM NAME="Forma" ACTION="addedRecordL8.jsp" METHOD ="GET">
		
		<jsp:include page="menus/menuUser.jsp" />
		
		<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<TR>
				<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
				<P><BR></P>
				</TD>
			</TR>
			<TR>
				<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
				<P ALIGN=CENTER><FONT FACE="Arial, sans-serif" SIZE=5 COLOR="000000">ADAUGARE LUCRARE</FONT>
				</P>
				</TD>
			</TR>	
			
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Autorul care citeaza: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Autor" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Denumire Revista:  </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="DenRevista" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Volum: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Volum" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Nr pagini: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="NrPagini" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Anul aparitiei: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="An" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><INPUT TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P>
				<INPUT TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>
<% 
 } 
  else if (nrlista.equals("Lista 9")){ 
%>
	<FORM NAME="Forma" ACTION="addedRecordL9.jsp" METHOD ="GET">
		
		<jsp:include page="menus/menuUser.jsp" />
		
		<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<TR>
				<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
				<P><BR></P>
				</TD>
			</TR>
			<TR>
				<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
				<P ALIGN=CENTER><FONT FACE="Arial, sans-serif" SIZE=5 COLOR="000000">ADAUGARE LUCRARE</FONT>
				</P>
				</TD>
			</TR>	
			
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Titlu Articol: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="TitluArticol" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Autori: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Denumire volum </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="DenVolum" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Denumire Conferinta: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="DenConferinta" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Locul desfasurarii: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Loc" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Data desfasurarii: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Data" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Pagina de inceput: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="PaginaInceput" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Pagina de sfarsit: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="PaginaSfarsit" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Anul: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Anul" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>						
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><INPUT TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P>
				<INPUT TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>
<% 
 } 
  else if (nrlista.equals("Lista 10")){ 
%>

	<FORM NAME="Forma" ACTION="addedRecordL10.jsp" METHOD ="GET">
		
		<jsp:include page="menus/menuUser.jsp" />
		
		<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<TR>
				<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
				<P><BR></P>
				</TD>
			</TR>
			<TR>
				<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
				<P ALIGN=CENTER><FONT FACE="Arial, sans-serif" SIZE=5 COLOR="000000">ADAUGARE LUCRARE</FONT>
				</P>
				</TD>
			</TR>	
			
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Tip grant: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 BGCOLOR="66CCFF">
					<P><FONT FACE="Arial, sans-serif"><SELECT NAME="TipGrant" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
					<SELECTED>
<%@page import="com.uvt.team08.orion.domain.model.TipGrant"%>
<%@page import="java.util.List"%>
					
<%
	List list=TipGrant.getTipGrantsAsList();
	for(int i=0;i<list.size();i++){
%>													
						<OPTION><%=list.get(i).toString()%></OPTION>
<%
}
%>	
					</SELECT></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Perioada: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Perioada" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Suma: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="Suma" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">Director program: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><INPUT TYPE=TEXT NAME="DirectorProg" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>						
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="66CCFF">
				<P><INPUT TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="66CCFF">
				<P>
				<INPUT TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="66CCFF">
			<P><BR></P>
			</TD>
		</TR>
<% 
 }  
%>
	</TABLE>
		<jsp:include page="menus/statusBar.jsp" />
	</FORM>
</body>
</html>