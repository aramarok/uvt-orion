<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	response.setHeader("Cache-Control", "no-store, no-cache");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>
<%@page import="java.text.SimpleDateFormat"%>
<html>
<head>
<title>Editare Inregistrare</title>

<link href="style.css" rel="stylesheet" type="text/css">

<%@ page import="com.uvt.team08.orion.domain.model.Lista1" %>
<%@ page import="com.uvt.team08.orion.domain.model.Lista2" %>
<%@ page import="com.uvt.team08.orion.domain.model.Lista3" %>
<%@ page import="com.uvt.team08.orion.domain.model.Lista4" %>
<%@ page import="com.uvt.team08.orion.domain.model.Lista5" %>
<%@ page import="com.uvt.team08.orion.domain.model.Lista6" %>
<%@ page import="com.uvt.team08.orion.domain.model.Lista7" %>
<%@ page import="com.uvt.team08.orion.domain.model.Lista8" %>
<%@ page import="com.uvt.team08.orion.domain.model.Lista9" %>
<%@ page import="com.uvt.team08.orion.domain.model.Lista10" %>
<%@ page import="com.uvt.team08.orion.domain.service.ListsService" %>
<%@ page import="com.uvt.team08.orion.view.WebUtil" %>

<script type="text/javascript" src="calendar.js">
</script>

<script type="text/javascript" src=validateAll.js>
</script>

<%!public ListsService lService = WebUtil.getListsService();
   public String nrlista=null;
   public int id_record=-1;
%>
<%
	try 
	{ 
		nrlista=request.getParameter("lista");
		id_record = Integer.parseInt(request.getParameter("record"));
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
%>
</head>
<body style="padding-top: 0px; margin-top: 0px;">

	
		
	<%@ include file="chooseMenu.jsp" %>
			
<%
				if (nrlista.equals("1")) {
					Lista1 lista1 = new Lista1();
					lista1 = (Lista1) lService.getList(id_record, Lista1.class);
					if (lista1 != null) {
			%>
	<FORM NAME="Forma" ACTION="editedRecord.jsp" METHOD ="GET" ONSUBMIT="return validateL1(this)">		
		<TABLE WIDTH=90% HEIGHT=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<tr bgcolor="#8DA3B1" height="90">
				<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
				Editare Lucrare</td>
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
			<TD COLSPAN=3 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<FONT FACE="@Arial Unicode MS, sans-serif">
					<input class="field_value"  TYPE=TEXT NAME="idrecord" VALUE=<%=id_record%> SIZE=23 MAXLENGTH=32 style="display: none;">
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif">
				<input class="field_value"  
				VALUE="<%=lista1.getTitluArticol()%>"
				TYPE=TEXT NAME="TitluArticol" SIZE=23 MAXLENGTH=32>
				</FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista1.getAutorii()%>"
				TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista1.getDenumireaRevistei()%>"
				TYPE=TEXT NAME="Revista" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista1.getVol()%>
				TYPE=TEXT NAME="Volum" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista1.getNr()%>
				TYPE=TEXT NAME="Numar" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista1.getPaginaDeInceput()%>
				TYPE=TEXT NAME="PaginaInceput" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista1.getPaginaDeSfarsit()%>
				TYPE=TEXT NAME="PaginaSfarsit" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value" 
				VALUE=<%=lista1.getAnul()%>
				TYPE=TEXT NAME="Anul" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  TYPE=TEXT 
				VALUE=<%=lista1.getFactorImpact()%>
				NAME="FactorImpact" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>			
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Modifica" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
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
	} else if (nrlista.equals("2")) {
		Lista2 lista2 = new Lista2();
		lista2 = (Lista2) lService.getList(id_record, Lista2.class);
		if (lista2 != null) {		
%>
	<FORM NAME="Forma" ACTION="editedRecord.jsp" METHOD ="GET" ONSUBMIT="return validateL2(this)">
		<TABLE WIDTH=90% HEIGHT=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<tr bgcolor="#8DA3B1" height="90">
				<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
				Editare Lucrare</td>
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
		<TD COLSPAN=3 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<FONT FACE="@Arial Unicode MS, sans-serif">
					<input class="field_value"  TYPE=TEXT NAME="idrecord" VALUE=<%=id_record%> SIZE=23 MAXLENGTH=32 style="display: none;">
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista2.getTitluArticol()%>"
				TYPE=TEXT NAME="TitluArticol" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista2.getAutorii()%>"
				TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista2.getDenumireaRevistei()%>"
				TYPE=TEXT NAME="Revista" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista2.getVol()%>
				TYPE=TEXT NAME="Volum" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista2.getNr()%>
				TYPE=TEXT NAME="Numar" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista2.getPaginaDeInceput()%>
				TYPE=TEXT NAME="PaginaInceput" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista2.getPaginaDeSfarsit()%>
				TYPE=TEXT NAME="PaginaSfarsit" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista2.getAnul()%>
				TYPE=TEXT NAME="Anul" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>						
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Modifica" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
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
	} else if (nrlista.equals("3")) {
		Lista3 lista3 = new Lista3();
		lista3 = (Lista3) lService.getList(id_record, Lista3.class);
		if (lista3 != null) {	
%>
	<FORM NAME="Forma" ACTION="editedRecord.jsp" METHOD ="GET" ONSUBMIT="return validateL3(this)">
		<TABLE WIDTH=90% HEIGHT=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<tr bgcolor="#8DA3B1" height="90">
				<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
				Editare Lucrare</td>
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
			
		<TD COLSPAN=3 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<FONT FACE="@Arial Unicode MS, sans-serif">
					<input class="field_value"  TYPE=TEXT NAME="idrecord" VALUE=<%=id_record%> SIZE=23 MAXLENGTH=32 style="display: none;">
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista3.getTitluArticol()%>"
				TYPE=TEXT NAME="TitluArticol" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista3.getAutorii()%>"
				TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista3.getDenumireaRevistei()%>"
				TYPE=TEXT NAME="Revista" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista3.getVol()%>
				TYPE=TEXT NAME="Volum" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista3.getNr()%>
				TYPE=TEXT NAME="Numar" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value" 
				VALUE=<%=lista3.getPaginaDeInceput()%>
				 TYPE=TEXT NAME="PaginaInceput" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista3.getPaginaDeSfarsit()%>
				TYPE=TEXT NAME="PaginaSfarsit" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista3.getAnul()%>
				TYPE=TEXT NAME="Anul" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>						
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Modifica" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
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
	} else if (nrlista.equals("4")) {
		Lista4 lista4 = new Lista4();
		lista4 = (Lista4) lService.getList(id_record, Lista4.class);
		if (lista4 != null) {
			SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy");
			String date=sdf.format(lista4.getDataDesfasurarii());			
%>
	<FORM NAME="Forma" ACTION="editedRecord.jsp" METHOD ="GET" ONSUBMIT="return validateL4(this)">		
		<TABLE WIDTH=90% HEIGHT=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<tr bgcolor="#8DA3B1" height="90">
				<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
				Editare Lucrare</td>
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
			
		<TD COLSPAN=3 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<FONT FACE="@Arial Unicode MS, sans-serif">
					<input class="field_value"  TYPE=TEXT NAME="idrecord" VALUE=<%=id_record%> SIZE=23 MAXLENGTH=32 style="display: none;">
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista4.getTitluArticol()%>"
				TYPE=TEXT NAME="TitluArticol" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista4.getAutorii()%>"
				TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista4.getDenumireaVolumului()%>"
				TYPE=TEXT NAME="DenVolum" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista4.getDenumireaConferintei()%>"
				TYPE=TEXT NAME="DenConferinta" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista4.getLoculDesfasurarii()%>"
				TYPE=TEXT NAME="Loc" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=date%>"
				TYPE=TEXT NAME="Data" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista4.getPaginaDeInceput()%>
				TYPE=TEXT NAME="PaginaInceput" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista4.getPaginaDeSfarsit()%>
				TYPE=TEXT NAME="PaginaSfarsit" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista4.getAnul()%>
				TYPE=TEXT NAME="Anul" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>						
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Modifica" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
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
	} else if (nrlista.equals("5")) {
		Lista5 lista5 = new Lista5();
		lista5 = (Lista5) lService.getList(id_record, Lista5.class);
		if (lista5 != null) {
			SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy");
			String date=sdf.format(lista5.getDataDesfasurarii());		
%>		
	<FORM NAME="Forma" ACTION="editedRecord.jsp" METHOD ="GET" ONSUBMIT="return validateL5(this)">
		<TABLE WIDTH=90% HEIGHT=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<tr bgcolor="#8DA3B1" height="90">
				<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
				Editare Lucrare</td>
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
			
		<TD COLSPAN=3 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<FONT FACE="@Arial Unicode MS, sans-serif">
					<input class="field_value"  TYPE=TEXT NAME="idrecord" VALUE=<%=id_record%> SIZE=23 MAXLENGTH=32 style="display: none;">
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista5.getTitluConferinta()%>"
				TYPE=TEXT NAME="TitluConferinta" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista5.getAutorii()%>"
				TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista5.getDenumireaVolumului()%>"
				TYPE=TEXT NAME="DenVolum" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value" 
				VALUE="<%=lista5.getDenumireaManifestarii()%>"
				 TYPE=TEXT NAME="DenManifestarii" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista5.getLoculDesfasurarii()%>"
				TYPE=TEXT NAME="Loc" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=date%>"
				TYPE=TEXT NAME="Data" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista5.getPaginaDeInceput()%>
				TYPE=TEXT NAME="PaginaInceput" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista5.getPaginaDeSfarsit()%>
				TYPE=TEXT NAME="PaginaSfarsit" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista5.getAnul()%>
				TYPE=TEXT NAME="Anul" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>						
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Modifica" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
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
	} else if (nrlista.equals("6")) {
		Lista6 lista6 = new Lista6();
		lista6 = (Lista6) lService.getList(id_record, Lista6.class);
		if (lista6 != null) {		
%>
	<FORM NAME="Forma" ACTION="editedRecord.jsp" METHOD ="GET" ONSUBMIT="return validateL6(this)">
		<TABLE WIDTH=90% HEIGHT=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<tr bgcolor="#8DA3B1" height="90">
				<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
				Editare Lucrare</td>
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
			
		<TD COLSPAN=3 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<FONT FACE="@Arial Unicode MS, sans-serif">
					<input class="field_value"  TYPE=TEXT NAME="idrecord" VALUE=<%=id_record%> SIZE=23 MAXLENGTH=32 style="display: none;">
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista6.getTitluMonografie()%>"
				TYPE=TEXT NAME="TitluMonografie" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista6.getAutorii()%>"
				TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista6.getEditura()%>"
				TYPE=TEXT NAME="Editura" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista6.getLocalitatea()%>"
				TYPE=TEXT NAME="Loc" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista6.getAnulAparitiei()%>
				TYPE=TEXT NAME="An" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista6.getNumarPagini()%>
				TYPE=TEXT NAME="NrPagini" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Modifica" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
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
	} else if (nrlista.equals("7")) {
		Lista7 lista7 = new Lista7();
		lista7 = (Lista7) lService.getList(id_record, Lista7.class);
		if (lista7 != null) {				
%>
	<FORM NAME="Forma" ACTION="editedRecord.jsp" METHOD ="GET" ONSUBMIT="return validateL7(this)">
		<TABLE WIDTH=90% HEIGHT=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<tr bgcolor="#8DA3B1" height="90">
				<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
				Editare Lucrare</td>
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
			
		<TD COLSPAN=3 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<FONT FACE="@Arial Unicode MS, sans-serif">
					<input class="field_value"  TYPE=TEXT NAME="idrecord" VALUE=<%=id_record%> SIZE=23 MAXLENGTH=32 style="display: none;">
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista7.getTitlu()%>"
				TYPE=TEXT NAME="Titlu" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista7.getAutorii()%>"
				TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista7.getEditura()%>"
				TYPE=TEXT NAME="Editura" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista7.getLocalitatea()%>"
				TYPE=TEXT NAME="Loc" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista7.getAnulAparitiei()%>
				TYPE=TEXT NAME="An" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista7.getNumarPagini()%>
				TYPE=TEXT NAME="NrPagini" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Modifica" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
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
	} else if (nrlista.equals("8")) {
		Lista8 lista8 = new Lista8();
		lista8 = (Lista8) lService.getList(id_record, Lista8.class);
		if (lista8 != null) {		
%>
	<FORM NAME="Forma" ACTION="editedRecord.jsp" METHOD ="GET" ONSUBMIT="return validateL8(this)">
		<TABLE WIDTH=90% HEIGHT=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<tr bgcolor="#8DA3B1" height="90">
				<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
				Editare Lucrare</td>
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
		<TD COLSPAN=3 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<FONT FACE="@Arial Unicode MS, sans-serif">
					<input class="field_value"  TYPE=TEXT NAME="idrecord" VALUE=<%=id_record%> SIZE=23 MAXLENGTH=32 style="display: none;">
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista8.getAutorulCareCiteaza()%>"
				TYPE=TEXT NAME="Autor" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista8.getDenumireaRevistei()%>"
				TYPE=TEXT NAME="DenRevista" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista8.getVol()%>
				TYPE=TEXT NAME="Volum" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista8.getNumarPagini()%>
				TYPE=TEXT NAME="NrPagini" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista8.getAnul()%>
				TYPE=TEXT NAME="An" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>				
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Modifica" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
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
	} else if (nrlista.equals("9")) {
		Lista9 lista9 = new Lista9();
		lista9 = (Lista9) lService.getList(id_record, Lista9.class);
		if (lista9 != null) {
			SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy");
			String date=sdf.format(lista9.getDataDesfasurarii());			
%>
	<FORM NAME="Forma" ACTION="editedRecord.jsp" METHOD ="GET" ONSUBMIT="return validateL9(this)">
		<TABLE WIDTH=90% HEIGHT=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<tr bgcolor="#8DA3B1" height="90">
				<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
				Editare Lucrare</td>
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
			
		<TD COLSPAN=3 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<FONT FACE="@Arial Unicode MS, sans-serif">
					<input class="field_value"  TYPE=TEXT NAME="idrecord" VALUE=<%=id_record%> SIZE=23 MAXLENGTH=32 style="display: none;">
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista9.getTitluArticol()%>"
				TYPE=TEXT NAME="TitluArticol" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista9.getAutorii()%>"
				TYPE=TEXT NAME="Autori" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista9.getDenumireaVolumului()%>"
				TYPE=TEXT NAME="DenVolum" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista9.getDenumireaConferintei()%>"
				TYPE=TEXT NAME="DenConferinta" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista9.getLoculDesfasurarii()%>"
				TYPE=TEXT NAME="Loc" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=date%>"
				TYPE=TEXT NAME="Data" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista9.getPaginaDeInceput()%>
				TYPE=TEXT NAME="PaginaInceput" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista9.getPaginaDeSfarsit()%>
				TYPE=TEXT NAME="PaginaSfarsit" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista9.getAnul()%>
				TYPE=TEXT NAME="Anul" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>						
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Modifica" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
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
	} else if (nrlista.equals("10")) {
		Lista10 lista10 = new Lista10();
		lista10 = (Lista10) lService.getList(id_record, Lista10.class);
		if (lista10 != null) {			
%>
	<FORM NAME="Forma" ACTION="editedRecord.jsp" METHOD ="GET" ONSUBMIT="return validateL10(this)">
		<TABLE WIDTH=90% HEIGHT=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>
			<COL WIDTH=38%>
			<COL WIDTH=2%>
			<COL WIDTH=50%>				
			<tr bgcolor="#8DA3B1" height="90">
				<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
				Editare Lucrare</td>
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
		<TD COLSPAN=3 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<FONT FACE="@Arial Unicode MS, sans-serif">
					<input class="field_value"  TYPE=TEXT NAME="idrecord" VALUE=<%=id_record%> SIZE=23 MAXLENGTH=32 style="display: none;">
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
					<P><FONT FACE="Arial, sans-serif">
					<SELECT NAME="TipGrant" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
					<SELECTED><%=lista10.getTipGrant().toString()%></SELECTED>
					
<%@page import="com.uvt.team08.orion.domain.model.TipGrant"%>
<%@page import="java.util.List"%>
					
<%
						List list = TipGrant.getTipGrantsAsList();
							for (int i = 0; i < list.size(); i++) {
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value" 
				VALUE=<%=lista10.getPerioada()%>
				 TYPE=TEXT NAME="Perioada" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE=<%=lista10.getSuma()%>
				TYPE=TEXT NAME="Suma" SIZE=23 MAXLENGTH=32></FONT></P>
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
				<P><FONT FACE="@Arial Unicode MS, sans-serif"><input class="field_value"  
				VALUE="<%=lista10.getDirectorProgram()%>"
				TYPE=TEXT NAME="DirectorProg" SIZE=23 MAXLENGTH=32></FONT></P>
			</TD>		
		</TR>		
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Modifica" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
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
	}
%>
<jsp:include page="menus/statusBar.jsp" />

</body>
</html>