<%@page import="com.uvt.team08.orion.view.WebUtil" %>
<%@page import="com.uvt.team08.orion.domain.service.GUIService" %>
<%@page import="com.uvt.team08.orion.meta.Tables" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	response.setHeader("Cache-Control", "no-store, no-cache");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>

<html>
<head>
<title>Adaugare Lucrare</title>
<link href="style.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="calendar.js">
</script>

<script type="text/javascript" src="validateAll.js">
</script>

<%!
	public String nrlista;
%>

<%

boolean sunt_batut_in_cap = false;


	try 
	{ 
		nrlista=request.getParameter("Lista");
		if(nrlista.equals("Lista 4")||nrlista.equals("Lista 5")||nrlista.equals("Lista 9"))
		{
%>
<script type="text/javascript">
var bas_cal,dp_cal,ms_cal;      
window.onload = function () 
{
	dp_cal  = new Epoch('epoch_popup','popup',document.getElementById('popup_container'))
};
</script>
<%
	}
		} 	
		catch (Exception e) 
		{ 
			e.printStackTrace();
		}
		
		if (nrlista.charAt(5) == ' ')
			nrlista = nrlista.substring(0, 5) + nrlista.substring(6);
	if(sunt_batut_in_cap)
	{	
%>


</head>
<body style="padding-top: 0px; margin-top: 0px;">
			
	<jsp:include page="chooseMenu.jsp"></jsp:include>
			
<%
	if (nrlista.equals("Lista 1")){
%>
	<FORM NAME="Forma" ACTION="addedRecord.jsp" METHOD ="GET" ONSUBMIT="return validateL1(this)">		
		<TABLE WIDTH=90% HEIGHT=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<tr bgcolor="#8DA3B1" height="90">
				<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
				Adaugare Lucrare</td>
			</tr>	
	
		<TR>
			<TD COLSPAN=3 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<FONT FACE="@Arial Unicode MS, sans-serif">
					<input class="field_value"  TYPE=TEXT NAME="nr" VALUE=1 SIZE=23 MAXLENGTH=32 style="display: none;">
				</FONT>
				</P>
			</TD>
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Titlu Articol: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="TitluArticol" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Autori: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Denumire revista: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Revista" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Volum: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Volum" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Numar: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Numar" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Pagina de inceput: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="PaginaInceput" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Pagina de sfarsit: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="PaginaSfarsit" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Anul: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Anul" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Factor Impact: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="FactorImpact" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>			
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<input class="field_value"  TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>
	</TABLE>
	</FORM>		
<% 
	}
	else if (nrlista.equals("Lista 2")){ 
%>
	<FORM NAME="Forma" ACTION="addedRecord.jsp" METHOD ="GET" ONSUBMIT="return validateL2(this)">
		<TABLE WIDTH=90% HEIGHT=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<tr bgcolor="#8DA3B1" height="90">
				<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
				Adaugare Lucrare</td>
			</tr>	

		<TR>
			<TD COLSPAN=3 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<FONT FACE="@Arial Unicode MS, sans-serif">
					<input class="field_value"  TYPE=TEXT NAME="nr" VALUE=2 SIZE=23 MAXLENGTH=32 style="display: none;">
				</FONT>
				</P>
			</TD>
		</TR>	
			
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Titlu Articol: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="TitluArticol" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Autori: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Denumire revista: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Revista" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Volum: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Volum" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Numar: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Numar" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Pagina de inceput: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="PaginaInceput" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Pagina de sfarsit: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="PaginaSfarsit" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Anul: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Anul" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>						
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<input class="field_value"  TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>
	</TABLE>
	</FORM>
		
<% 
 }
 	else if (nrlista.equals("Lista 3")){ 
%>
		<FORM NAME="Forma" ACTION="addedRecord.jsp" METHOD ="GET" ONSUBMIT="return validateL3(this)">
		<TABLE WIDTH=90% HEIGHT=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<tr bgcolor="#8DA3B1" height="90">
				<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
				Adaugare Lucrare</td>
			</tr>	

		<TR>
			<TD COLSPAN=3 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<FONT FACE="@Arial Unicode MS, sans-serif">
					<input class="field_value"  TYPE=TEXT NAME="nr" VALUE=3 SIZE=23 MAXLENGTH=32 style="display: none;">
				</FONT>
				</P>
			</TD>
		</TR>	
			
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Titlu Articol: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="TitluArticol" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Autori: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Denumire revista: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Revista" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Volum: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Volum" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Numar: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Numar" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Pagina de inceput: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="PaginaInceput" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Pagina de sfarsit: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="PaginaSfarsit" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Anul: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Anul" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>						
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<input class="field_value"  TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>
	</TABLE>
	</FORM>		
<% 
 } 
  else if (nrlista.equals("Lista 4")){ 
%>
		<FORM NAME="Forma" ACTION="addedRecord.jsp" METHOD ="GET" ONSUBMIT="return validateL4(this)">	
		<TABLE WIDTH=90% HEIGHT=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<tr bgcolor="#8DA3B1" height="90">
				<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
				Adaugare Lucrare</td>
			</tr>	

		<TR>
			<TD COLSPAN=3 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<FONT FACE="@Arial Unicode MS, sans-serif">
					<input class="field_value"  TYPE=TEXT NAME="nr" VALUE=4 SIZE=23 MAXLENGTH=32 style="display: none;">
				</FONT>
				</P>
			</TD>
		</TR>	
			
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Titlu Articol: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="TitluArticol" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Autori: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Denumire volum </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="DenVolum" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Denumire Conferinta: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="DenConferinta" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Locul desfasurarii: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Loc" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Data desfasurarii: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT id="popup_container" NAME="Data" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Pagina de inceput: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="PaginaInceput" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Pagina de sfarsit: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="PaginaSfarsit" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Anul: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Anul" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>						
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<input class="field_value"  TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>
	</TABLE>
	</FORM>
		
<% 
 } 
  else if (nrlista.equals("Lista 5")){ 
%>		
		<FORM NAME="Forma" ACTION="addedRecord.jsp" METHOD ="GET" ONSUBMIT="return validateL5(this)">
		<TABLE WIDTH=90% HEIGHT=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<tr bgcolor="#8DA3B1" height="90">
				<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
				Adaugare Lucrare</td>
			</tr>	

		<TR>
			<TD COLSPAN=3 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<FONT FACE="@Arial Unicode MS, sans-serif">
					<input class="field_value"  TYPE=TEXT NAME="nr" VALUE=5 SIZE=23 MAXLENGTH=32 style="display: none;">
				</FONT>
				</P>
			</TD>
		</TR>	
			
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Titlu Conferinta: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="TitluConferinta" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Autori: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Denumire volum </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="DenVolum" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Denumire Manifestarii </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="DenManifestarii" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Locul desfasurarii: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Loc" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Data desfasurarii: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT id="popup_container" NAME="Data" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Pagina de inceput: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="PaginaInceput" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Pagina de sfarsit: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="PaginaSfarsit" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Anul: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Anul" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>						
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<input class="field_value"  TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>
	</TABLE>
	</FORM>
		
<% 
 } 
  else if (nrlista.equals("Lista 6")){ 
%>
		<FORM NAME="Forma" ACTION="addedRecord.jsp" METHOD ="GET" ONSUBMIT="return validateL6(this)">
		<TABLE WIDTH=90% HEIGHT=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<tr bgcolor="#8DA3B1" height="90">
				<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
				Adaugare Lucrare</td>
			</tr>	

		<TR>
			<TD COLSPAN=3 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<FONT FACE="@Arial Unicode MS, sans-serif">
					<input class="field_value"  TYPE=TEXT NAME="nr" VALUE=6 SIZE=23 MAXLENGTH=32 style="display: none;">
				</FONT>
				</P>
			</TD>
		</TR>	
			
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Titlu Monografie </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="TitluMonografie" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Autori: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Editura:  </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Editura" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Localitatea: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Loc" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Anul aparitiei: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="An" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Nr pagini: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="NrPagini" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<input class="field_value"  TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>
	</TABLE>
	</FORM>

<% 
 } 
  else if (nrlista.equals("Lista 7")){ 
%>
		<FORM NAME="Forma" ACTION="addedRecord.jsp" METHOD ="GET" ONSUBMIT="return validateL7(this)">	
		<TABLE WIDTH=90% HEIGHT=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<tr bgcolor="#8DA3B1" height="90">
				<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
				Adaugare Lucrare</td>
			</tr>	
	
		<TR>
			<TD COLSPAN=3 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<FONT FACE="@Arial Unicode MS, sans-serif">
					<input class="field_value"  TYPE=TEXT NAME="nr" VALUE=7 SIZE=23 MAXLENGTH=32 style="display: none;">
				</FONT>
				</P>
			</TD>
		</TR>	
			
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Titlu: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Titlu" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Autori: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Editura:  </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Editura" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Localitatea: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Loc" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Anul aparitiei: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="An" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Nr pagini: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="NrPagini" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<input class="field_value"  TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>
	</TABLE>
	</FORM>
		
<% 
 } 
  else if (nrlista.equals("Lista 8")){ 
%>
		<FORM NAME="Forma" ACTION="addedRecord.jsp" METHOD ="GET" ONSUBMIT="return validateL8(this)">
		<TABLE WIDTH=90% HEIGHT=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<tr bgcolor="#8DA3B1" height="90">
				<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
				Adaugare Lucrare</td>
			</tr>	
	
		<TR>
			<TD COLSPAN=3 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<FONT FACE="@Arial Unicode MS, sans-serif">
					<input class="field_value"  TYPE=TEXT NAME="nr" VALUE=8 SIZE=23 MAXLENGTH=32 style="display: none;">
				</FONT>
				</P>
			</TD>
		</TR>	
			
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Autorul care citeaza: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Autor" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Denumire Revista:  </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="DenRevista" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Volum: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Volum" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Nr pagini: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="NrPagini" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Anul aparitiei: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="An" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<input class="field_value"  TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>
	</TABLE>
	</FORM>
		
<% 
 } 
  else if (nrlista.equals("Lista 9")){ 
%>
		<FORM NAME="Forma" ACTION="addedRecord.jsp" METHOD ="GET" ONSUBMIT="return validateL9(this)">
		<TABLE WIDTH=90% HEIGHT=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<tr bgcolor="#8DA3B1" height="90">
				<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
				Adaugare Lucrare</td>
			</tr>	

		<TR>
			<TD COLSPAN=3 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<FONT FACE="@Arial Unicode MS, sans-serif">
					<input class="field_value"  TYPE=TEXT NAME="nr" VALUE=9 SIZE=23 MAXLENGTH=32 style="display: none;">
				</FONT>
				</P>
			</TD>
		</TR>	
			
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Titlu Articol: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="TitluArticol" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Autori: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Denumire volum </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="DenVolum" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Denumire Conferinta: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="DenConferinta" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Locul desfasurarii: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Loc" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Data desfasurarii: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT id="popup_container" NAME="Data" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Pagina de inceput: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="PaginaInceput" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Pagina de sfarsit: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="PaginaSfarsit" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Anul: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Anul" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>						
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<input class="field_value"  TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>
	</TABLE>
	</FORM>
		
<% 
 } 
  else if (nrlista.equals("Lista 10")){ 
%>
		<FORM NAME="Forma" ACTION="addedRecord.jsp" METHOD ="GET" ONSUBMIT="return validateL10(this)">
		<TABLE WIDTH=90% HEIGHT=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<tr bgcolor="#8DA3B1" height="90">
				<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
				Adaugare Lucrare</td>
			</tr>	
	
		<TR>
			<TD COLSPAN=3 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<FONT FACE="@Arial Unicode MS, sans-serif">
					<input class="field_value"  TYPE=TEXT NAME="nr" VALUE=10 SIZE=23 MAXLENGTH=32 style="display: none;">
				</FONT>
				</P>
			</TD>
		</TR>	
			
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Tip grant: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 BGCOLOR="#DFE8F0">
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
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Perioada: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Perioada" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>	
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Suma: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="Suma" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>Director program: </FONT>
				</P>	
			<TD COLSPAN=1 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>				
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT NAME="DirectorProg" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>						
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<input class="field_value"  TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>
	</TABLE>
	</FORM>
<% 
 }}  else {	 
		String tableID = nrlista;
 %>
		<FORM NAME="Forma" ACTION="insert.jsp" METHOD ="GET">
				
	 		<input type="hidden" name="nume_tabela" value=<%= tableID %> />

			<TABLE WIDTH="90%" HEIGHT="80%" ALIGN="CENTER" CELLSPACING="0" BORDER="0">
				<COL WIDTH=38%>
				<COL WIDTH=2%>
				<COL WIDTH=50%>
				
				<tr bgcolor="#8DA3B1" height="90">
					<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
						Adaugare Lucrare : <%= Tables.getTableNameByID(tableID) %>
					</td>
				</tr>
<%
	 // OTHER LIST OR ERROR
	 
	GUIService gui = WebUtil.getGUIService();
	
	out.println(gui.getInsertForm(tableID));
%>

		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<input class="field_value"  TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>
	</TABLE>
	</FORM>
<%

 }
%>
		<jsp:include page="menus/statusBar.jsp" />
</body>
</html>