<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	response.setHeader("Cache-Control", "no-store, no-cache");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.uvt.team08.orion.meta.Tables"%>
<html>
<head>

<title>Vizualizare Lucrari</title>

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

<%!public ListsService lService = WebUtil.getListsService();
	public boolean anyrecords;%>
</head>
<body style="padding-top: 0px; margin-top: 0px;">
	<%@ include file="chooseMenu.jsp" %>
	<TABLE WIDTH=90% ALIGN=CENTER CELLSPACING=0 BORDER=0>			
		<tr bgcolor="#8DA3B1" height="90">
			<td class="header_text" style="padding-left: 45px; padding-top: 50px;">
			Vizualizare Lucrari</td>
		</tr>	
	<TR ALIGN=CENTER bgcolor="#DFE8F0">
	 <TD ALIGN=CENTER>	
<%
		//Initial presupunem ca nu sunt lucrari
		anyrecords = false;
	 	boolean sunt_batut_in_cap = false;
	 	if (sunt_batut_in_cap)
	 	{
		try {
			List<Object> list1records = lService.getListRecordsOfAUser(
					usr_id, Lista1.class);
			if ((list1records != null) && (!list1records.isEmpty())) {
				anyrecords = true;
	%>
		 <BR>
		 <P class="table_header">Articole stiintifice publicate in reviste de specialitate din strainatate</P>
		 <TABLE WIDTH=90% ALIGN=CENTER CELLPADDING=1 BORDER=0>
		 	<TR ALIGN=CENTER bgcolor="#DFE8F0">
		 		<Th ALIGN=CENTER class="table_header">Articol</Th>
		 		<Th ALIGN=CENTER class="table_header">Autori</Th>
		 		<Th ALIGN=CENTER class="table_header">Revista</Th>
		 		<Th ALIGN=CENTER class="table_header">Volum</Th>
		 		<Th ALIGN=CENTER class="table_header">Numar</Th>
		 		<Th ALIGN=CENTER class="table_header">Pag inceput</Th>
		 		<Th ALIGN=CENTER class="table_header">Pag sfarsit</Th>
		 		<Th ALIGN=CENTER class="table_header">Anul</Th>
		 		<Th ALIGN=CENTER class="table_header">Factor impact</Th>
		 		<Th ALIGN=CENTER class="table_header">Edit.</Th>
		 		<Th ALIGN=CENTER class="table_header">Sterg.</Th>
		 	</TR>
		 <%
		 	int i = 0;
		 			for (Object l : list1records) {
		 				i++;
		 				String pag = "\"editRecord.jsp?lista=1&record="
		 						+ ((Lista1) l).getIdLista1().toString() + "\"";
		 				String pag2 = "\"deletedRecord.jsp?lista=1&record="
		 						+ ((Lista1) l).getIdLista1().toString() + "\"";
		 %>
			 	<TR ALIGN=CENTER bgcolor="#DFE8F0" 
			 	<% 
			 	if(i % 2 == 0){
			 		out.print("class=\"even\"");
			 	}
			 	else out.print("class=\"odd\"");
			 	%>>
			 	 <TD ALIGN=CENTER> <%=((Lista1) l).getTitluArticol()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista1) l).getAutorii()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista1) l).getDenumireaRevistei()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista1) l).getVol()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista1) l).getNr()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista1) l).getPaginaDeInceput()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista1) l).getPaginaDeSfarsit()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista1) l).getAnul()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista1) l).getFactorImpact()%></TD>
			 	 <TD ALIGN=CENTER> <a href=<%=pag%>>Editare</a></TD>
			 	 <TD ALIGN=CENTER> <a href=<%=pag2%>>Stergere</a></TD>
			 	</TR>		 	
			 <%
		 				 	}
		 				 %>		 
		 </TABLE>
		 <%
		 	} else {
		 		}
		 	} catch (Exception e) {
		 %>
		 	 </TABLE>			 
			 <p>Exceptie: <%=e.getMessage()%></p> 
			 <%
 			 	}
 			 %>	
	</TD>
	</TR>
	
	<TR ALIGN=CENTER bgcolor="#DFE8F0">
	 <TD ALIGN=CENTER>	
<%
		try {
			List<Object> list2records = lService.getListRecordsOfAUser(
					usr_id, Lista2.class);
			if ((list2records != null) && (!list2records.isEmpty())) {
				anyrecords = true;
	%>
		 <BR>
		 <P class="table_header">Articole stiintifice publicate in revistele de specialitate ale Academiei Romane</P>
		 <TABLE WIDTH=90% ALIGN=CENTER CELLPADDING=1 BORDER=0>
		 	<TR ALIGN=CENTER bgcolor="#DFE8F0">
		 		<Th ALIGN=CENTER class="table_header">Articol</Th>
		 		<Th ALIGN=CENTER class="table_header">Autori</Th>
		 		<Th ALIGN=CENTER class="table_header">Revista</Th>
		 		<Th ALIGN=CENTER class="table_header">Volum</Th>
		 		<Th ALIGN=CENTER class="table_header">Numar</Th>
		 		<Th ALIGN=CENTER class="table_header">Pag inceput</Th>
		 		<Th ALIGN=CENTER class="table_header">Pag sfarsit</Th>
		 		<Th ALIGN=CENTER class="table_header">Anul</Th>
		 		<Th ALIGN=CENTER class="table_header">Edit.</Th>
		 		<Th ALIGN=CENTER class="table_header">Sterg.</Th>		 		
		 	</TR>
		 <%
		 	int i = 0;
		 			for (Object l : list2records) {
		 				i++;
		 				String pag = "\"editRecord.jsp?lista=2&record="
		 						+ ((Lista2) l).getIdLista2().toString() + "\"";
		 				String pag2 = "\"deletedRecord.jsp?lista=2&record="
		 						+ ((Lista2) l).getIdLista2().toString() + "\"";
		 %>
			 <TR ALIGN=CENTER bgcolor="#DFE8F0" 
			 	<% 
			 	if(i % 2 == 0){
			 		out.print("class=\"even\"");
			 	}
			 	else 
			 		out.print("class=\"odd\"");
			 	%>>
			 	 <TD ALIGN=CENTER> <%=((Lista2) l).getTitluArticol()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista2) l).getAutorii()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista2) l).getDenumireaRevistei()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista2) l).getVol()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista2) l).getNr()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista2) l).getPaginaDeInceput()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista2) l).getPaginaDeSfarsit()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista2) l).getAnul()%></TD>
			 	 <TD ALIGN=CENTER> <a href=<%=pag%>>Editare</a></TD>
			 	 <TD ALIGN=CENTER> <a href=<%=pag2%>>Stergere</a></TD>			 	 
			 	</TR>
			 <%
			 	}
			 %>
		 </TABLE>
		 <%
		 	} else {
		 		}
		 	} catch (Exception e) {
		 %>
			 </TABLE>
			 <p>Exceptie: <%=e.getMessage()%></p> 
			 <%
 			 	}
 			 %>	
	</TD>
	</TR>
		
	<TR ALIGN=CENTER bgcolor="#DFE8F0">
	 <TD ALIGN=CENTER>	
<%
		try {
			List<Object> list3records = lService.getListRecordsOfAUser(
					usr_id, Lista3.class);
			if ((list3records != null) && (!list3records.isEmpty())) {
				anyrecords = true;
	%>
		 <BR>
		 <P class="table_header">Articole stiintifice publicate in reviste ale universitatilor</P>
		 <TABLE WIDTH=90% ALIGN=CENTER CELLPADDING=1 BORDER=0>
		 	<TR ALIGN=CENTER bgcolor="#DFE8F0">
		 		<Th ALIGN=CENTER class="table_header">Articol</Th>
		 		<Th ALIGN=CENTER class="table_header">Autori</Th>
		 		<Th ALIGN=CENTER class="table_header">Revista</Th>
		 		<Th ALIGN=CENTER class="table_header">Volum</Th>
		 		<Th ALIGN=CENTER class="table_header">Numar</Th>
		 		<Th ALIGN=CENTER class="table_header">Pag inceput</Th>
		 		<Th ALIGN=CENTER class="table_header">Pag sfarsit</Th>
		 		<Th ALIGN=CENTER class="table_header">Anul</Th>
		 		<Th ALIGN=CENTER class="table_header">Edit.</Th>
		 		<Th ALIGN=CENTER class="table_header">Sterg.</Th>		 		
		 	</TR>
		 <%
		 	int i = 0;
		 			for (Object l : list3records) {
		 				i++;
		 				String pag = "\"editRecord.jsp?lista=3&record="
		 						+ ((Lista3) l).getIdLista3().toString() + "\"";
		 				String pag2 = "\"deletedRecord.jsp?lista=3&record="
		 						+ ((Lista3) l).getIdLista3().toString() + "\"";
		 %>
			 <TR ALIGN=CENTER bgcolor="#DFE8F0" 
			 	<% 
			 	if(i % 2 == 0){
			 		out.print("class=\"even\"");
			 	}
			 	else 
			 		out.print("class=\"odd\"");
			 	%>>
			 	 <TD ALIGN=CENTER> <%=((Lista3) l).getTitluArticol()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista3) l).getAutorii()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista3) l).getDenumireaRevistei()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista3) l).getVol()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista3) l).getNr()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista3) l).getPaginaDeInceput()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista3) l).getPaginaDeSfarsit()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista3) l).getAnul()%></TD>
			 	 <TD ALIGN=CENTER> <a href=<%=pag%>>Editare</a></TD>
			 	 <TD ALIGN=CENTER> <a href=<%=pag2%>>Stergere</a></TD>			 	 
			 	</TR>			 	
			 <%
			 				 	}
			 				 %>		 
		 </TABLE>
		 <%
		 	} else {
		 		}
		 	} catch (Exception e) {
		 %>
		 	 </TABLE>			 
			 <p>Exceptie: <%=e.getMessage()%></p> 
			 <%
 			 	}
 			 %>	
	</TD>
	</TR>
	
	
	<TR ALIGN=CENTER bgcolor="#DFE8F0">
	 <TD ALIGN=CENTER>	
<%
		try {
			List<Object> list4records = lService.getListRecordsOfAUser(
					usr_id, Lista4.class);
			if ((list4records != null) && (!list4records.isEmpty())) {
				anyrecords = true;
	%>
		 <BR>
		 <P class="table_header">Articole stiintifice publicate in volumele unor conferinte internationale</P>
		 <TABLE WIDTH=90% ALIGN=CENTER CELLPADDING=1 BORDER=0>
		 	<TR ALIGN=CENTER bgcolor="#DFE8F0">
		 		<Th ALIGN=CENTER class="table_header">Articol</Th>
		 		<Th ALIGN=CENTER class="table_header">Autori</Th>
		 		<Th ALIGN=CENTER class="table_header">Volum</Th>
		 		<Th ALIGN=CENTER class="table_header">Conferinta</Th>
		 		<Th ALIGN=CENTER class="table_header">Locul</Th>
		 		<Th ALIGN=CENTER class="table_header">Data</Th>
		 		<Th ALIGN=CENTER class="table_header">Pag inceput</Th>
		 		<Th ALIGN=CENTER class="table_header">Pag sfarsit</Th>
		 		<Th ALIGN=CENTER class="table_header">Anul</Th>
		 		<Th ALIGN=CENTER class="table_header">Edit.</Th>
		 		<Th ALIGN=CENTER class="table_header">Sterg.</Th>		 		
		 	</TR>
		 <%
		 	int i = 0;
		 			for (Object l : list4records) {
		 				SimpleDateFormat sdf = new SimpleDateFormat(
		 						"dd-MM-yyyy");
		 				Date date = (Date) ((Lista4) l).getDataDesfasurarii();
		 				String data = sdf.format(date);
		 				i++;
		 				String pag = "\"editRecord.jsp?lista=4&record="
		 						+ ((Lista4) l).getIdLista4().toString() + "\"";
		 				String pag2 = "\"deletedRecord.jsp?lista=4&record="
		 						+ ((Lista4) l).getIdLista4().toString() + "\"";
		 %>
			 <TR ALIGN=CENTER bgcolor="#DFE8F0" 
			 	<% 
			 	if(i % 2 == 0){
			 		out.print("class=\"even\"");
			 	}
			 	else 
			 		out.print("class=\"odd\"");
			 	%>>
			 	 <TD ALIGN=CENTER> <%=((Lista4) l).getTitluArticol()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista4) l).getAutorii()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista4) l).getDenumireaVolumului()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista4) l).getDenumireaConferintei()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista4) l).getLoculDesfasurarii()%></TD>
			 	 <TD ALIGN=CENTER> <%=data%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista4) l).getPaginaDeInceput()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista4) l).getPaginaDeSfarsit()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista4) l).getAnul()%></TD>
			 	 <TD ALIGN=CENTER> <a href=<%=pag%>>Editare</a></TD>
			 	 <TD ALIGN=CENTER> <a href=<%=pag2%>>Stergere</a></TD>			 	 
			 	</TR>			 	
			 <%
			 				 	}
			 				 %>	 
		 </TABLE>
		 <%
		 	} else {
		 		}
		 	} catch (Exception e) {
		 %>
		 	 </TABLE>			 
			 <p>Exceptie: <%=e.getMessage()%></p> 
			 <%
 			 	}
 			 %>	
	</TD>
	</TR>
	
	
	<TR ALIGN=CENTER bgcolor="#DFE8F0">
	 <TD ALIGN=CENTER>	
<%
		try {
			List<Object> list5records = lService.getListRecordsOfAUser(
					usr_id, Lista5.class);
			if ((list5records != null) && (!list5records.isEmpty())) {
				anyrecords = true;
	%>
		 <BR>
		 <P class="table_header">Conferinte invitate la manifestari internationale</P>
		 <TABLE WIDTH=90% ALIGN=CENTER CELLPADDING=1 BORDER=0>
		 	<TR ALIGN=CENTER bgcolor="#DFE8F0">
		 		<Th ALIGN=CENTER class="table_header">Conferinta</Th>
		 		<Th ALIGN=CENTER class="table_header">Autori</Th>
		 		<Th ALIGN=CENTER class="table_header">Volum</Th>
		 		<Th ALIGN=CENTER class="table_header">Manifestare</Th>
		 		<Th ALIGN=CENTER class="table_header">Loc</Th>
		 		<Th ALIGN=CENTER class="table_header">Data</Th>
		 		<Th ALIGN=CENTER class="table_header">Pag inceput</Th>
		 		<Th ALIGN=CENTER class="table_header">Pag sfarsit</Th>
		 		<Th ALIGN=CENTER class="table_header">Anul</Th>
		 		<Th ALIGN=CENTER class="table_header">Edit.</Th>
		 		<Th ALIGN=CENTER class="table_header">Sterg.</Th>		 		
		 	</TR>
		 <%
		 	int i = 0;
		 			for (Object l : list5records) {
		 				SimpleDateFormat sdf = new SimpleDateFormat(
		 						"dd-MM-yyyy");
		 				Date date = (Date) ((Lista5) l).getDataDesfasurarii();
		 				String data = sdf.format(date);
		 				i++;
		 				String pag = "\"editRecord.jsp?lista=5&record="
		 						+ ((Lista5) l).getIdLista5().toString() + "\"";
		 				String pag2 = "\"deletedRecord.jsp?lista=5&record="
		 						+ ((Lista5) l).getIdLista5().toString() + "\"";
		 %>
			 <TR ALIGN=CENTER bgcolor="#DFE8F0" 
			 	<% 
			 	if(i % 2 == 0){
			 		out.print("class=\"even\"");
			 	}
			 	else 
			 		out.print("class=\"odd\"");
			 	%>>
			 	 <TD ALIGN=CENTER> <%=((Lista5) l).getTitluConferinta()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista5) l).getAutorii()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista5) l).getDenumireaVolumului()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista5) l).getDenumireaManifestarii()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista5) l).getLoculDesfasurarii()%></TD>
			 	 <TD ALIGN=CENTER> <%=data%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista5) l).getPaginaDeInceput()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista5) l).getPaginaDeSfarsit()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista5) l).getAnul()%></TD>
			 	 <TD ALIGN=CENTER> <a href=<%=pag%>>Editare</a></TD>
			 	 <TD ALIGN=CENTER> <a href=<%=pag2%>>Stergere</a></TD>			 	 
			 	</TR>			 	
			 <%
			 				 	}
			 				 %>	 
		 </TABLE>
		 <%
		 	} else {
		 		}
		 	} catch (Exception e) {
		 %>
		 	 </TABLE>			 
			 <p>Exceptie: <%=e.getMessage()%></p> 
			 <%
 			 	}
 			 %>	
	</TD>
	</TR>


	<TR ALIGN=CENTER bgcolor="#DFE8F0">
	 <TD ALIGN=CENTER>	
<%
		try {
			List<Object> list6records = lService.getListRecordsOfAUser(
					usr_id, Lista6.class);
			if ((list6records != null) && (!list6records.isEmpty())) {
				anyrecords = true;
	%>
		 <BR>
		 <P class="table_header">Lista monografiilor de secialitate publicate in edituri consacrate din strainatate</P>
		 <TABLE WIDTH=90% ALIGN=CENTER CELLPADDING=1 BORDER=0>
		 	<TR ALIGN=CENTER bgcolor="#DFE8F0">
		 		<Th ALIGN=CENTER class="table_header">Monografie</Th>
		 		<Th ALIGN=CENTER class="table_header">Autori</Th>
		 		<Th ALIGN=CENTER class="table_header">Editura</Th>
		 		<Th ALIGN=CENTER class="table_header">Localitate</Th>
		 		<Th ALIGN=CENTER class="table_header">An aparitie</Th>
		 		<Th ALIGN=CENTER class="table_header">Nr Pag</Th>
		 		<Th ALIGN=CENTER class="table_header">Edit.</Th>
		 		<Th ALIGN=CENTER class="table_header">Sterg.</Th>		 		
		 	</TR>
		 <%
		 	int i = 0;
		 			for (Object l : list6records) {
		 				i++;
		 				String pag = "\"editRecord.jsp?lista=6&record="
		 						+ ((Lista6) l).getIdLista6().toString() + "\"";
		 				String pag2 = "\"deletedRecord.jsp?lista=6&record="
		 						+ ((Lista6) l).getIdLista6().toString() + "\"";
		 %>
			 <TR ALIGN=CENTER bgcolor="#DFE8F0" 
			 	<% 
			 	if(i % 2 == 0){
			 		out.print("class=\"even\"");
			 	}
			 	else 
			 		out.print("class=\"odd\"");
			 	%>>
			 	 <TD ALIGN=CENTER> <%=((Lista6) l).getTitluMonografie()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista6) l).getAutorii()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista6) l).getEditura()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista6) l).getLocalitatea()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista6) l).getAnulAparitiei()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista6) l).getNumarPagini()%></TD>
			 	 <TD ALIGN=CENTER> <a href=<%=pag%>>Editare</a></TD>
			 	 <TD ALIGN=CENTER> <a href=<%=pag2%>>Stergere</a></TD>			 	 			 	 
			 	</TR>			 	
			 <%
			 				 	}
			 				 %>	 
		 </TABLE>
		 <%
		 	} else {
		 		}
		 	} catch (Exception e) {
		 %>
		 	 </TABLE>			 
			 <p>Exceptie: <%=e.getMessage()%></p> 
			 <%
 			 	}
 			 %>	
	</TD>
	</TR>


	<TR ALIGN=CENTER bgcolor="#DFE8F0">
	 <TD ALIGN=CENTER>	
<%
		try {
			List<Object> list7records = lService.getListRecordsOfAUser(
					usr_id, Lista7.class);
			if ((list7records != null) && (!list7records.isEmpty())) {
				anyrecords = true;
	%>
		 <BR>
		 <P class="table_header">Lista cartilor si monografiilor publicate in edituri din tara si de litografii ale universitatilor</P>
		 <TABLE WIDTH=90% ALIGN=CENTER CELLPADDING=1 BORDER=0>
		 	<TR ALIGN=CENTER bgcolor="#DFE8F0">
		 		<Th ALIGN=CENTER class="table_header">Titlu</Th>
		 		<Th ALIGN=CENTER class="table_header">Autori</Th>
		 		<Th ALIGN=CENTER class="table_header">Editura</Th>
		 		<Th ALIGN=CENTER class="table_header">Localitate</Th>
		 		<Th ALIGN=CENTER class="table_header">An aparitie</Th>
		 		<Th ALIGN=CENTER class="table_header">Nr Pag</Th>
		 		<Th ALIGN=CENTER class="table_header">Edit.</Th>
		 		<Th ALIGN=CENTER class="table_header">Sterg.</Th>		 		
		 	</TR>
		 <%
		 	int i = 0;
		 			for (Object l : list7records) {
		 				i++;
		 				String pag = "\"editRecord.jsp?lista=7&record="
		 						+ ((Lista7) l).getIdLista7().toString() + "\"";
		 				String pag2 = "\"deletedRecord.jsp?lista=7&record="
		 						+ ((Lista7) l).getIdLista7().toString() + "\"";
		 %>
			 <TR ALIGN=CENTER bgcolor="#DFE8F0" 
			 	<% 
			 	if(i % 2 == 0){
			 		out.print("class=\"even\"");
			 	}
			 	else 
			 		out.print("class=\"odd\"");
			 	%>>
			 	 <TD ALIGN=CENTER> <%=((Lista7) l).getTitlu()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista7) l).getAutorii()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista7) l).getEditura()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista7) l).getLocalitatea()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista7) l).getAnulAparitiei()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista7) l).getNumarPagini()%></TD>
			 	 <TD ALIGN=CENTER> <a href=<%=pag%>>Editare</a></TD>
			 	 <TD ALIGN=CENTER> <a href=<%=pag2%>>Stergere</a></TD>			 	 
			 	</TR>			 	
			 <%
			 				 	}
			 				 %>	 
		 </TABLE>
		 <%
		 	} else {
		 		}
		 	} catch (Exception e) {
		 %>
		 	 </TABLE>			 
			 <p>Exceptie: <%=e.getMessage()%></p> 
			 <%
 			 	}
 			 %>	
	</TD>
	</TR>


	<TR ALIGN=CENTER bgcolor="#DFE8F0">
	 <TD ALIGN=CENTER>	
<%
		try {
			List<Object> list8records = lService.getListRecordsOfAUser(
					usr_id, Lista8.class);
			if ((list8records != null) && (!list8records.isEmpty())) {
				anyrecords = true;
	%>
		 <BR>
		 <P class="table_header">Lista cu lucrari citate.</P>
		 <TABLE WIDTH=90% ALIGN=CENTER CELLPADDING=1 BORDER=0>
		 	<TR ALIGN=CENTER bgcolor="#DFE8F0">
		 		<Th ALIGN=CENTER class="table_header">Autor care citeaza</Th>
		 		<Th ALIGN=CENTER class="table_header">Revista</Th>
		 		<Th ALIGN=CENTER class="table_header">Volum</Th>
		 		<Th ALIGN=CENTER class="table_header">Nr Pag</Th>
		 		<Th ALIGN=CENTER class="table_header">Anul</Th>
		 		<Th ALIGN=CENTER class="table_header">Edit.</Th>
		 		<Th ALIGN=CENTER class="table_header">Sterg.</Th>		 		
		 	</TR>
		 <%
		 	int i = 0;
		 			for (Object l : list8records) {
		 				i++;
		 				String pag = "\"editRecord.jsp?lista=8&record="
		 						+ ((Lista8) l).getIdLista8().toString() + "\"";
		 				String pag2 = "\"deletedRecord.jsp?lista=8&record="
		 						+ ((Lista8) l).getIdLista8().toString() + "\"";
		 %>
			 <TR ALIGN=CENTER bgcolor="#DFE8F0" 
			 	<% 
			 	if(i % 2 == 0){
			 		out.print("class=\"even\"");
			 	}
			 	else 
			 		out.print("class=\"odd\"");
			 	%>>
			 	 <TD ALIGN=CENTER> <%=((Lista8) l).getAutorulCareCiteaza()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista8) l).getDenumireaRevistei()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista8) l).getVol()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista8) l).getNumarPagini()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista8) l).getAnul()%></TD>
			 	 <TD ALIGN=CENTER> <a href=<%=pag%>>Editare</a></TD>
			 	 <TD ALIGN=CENTER> <a href=<%=pag2%>>Stergere</a></TD>			 	 
			 	</TR>			 	
			 <%
			 				 	}
			 				 %>	 
		 </TABLE>
		 <%
		 	} else {
		 		}
		 	} catch (Exception e) {
		 %>
		 	 </TABLE>			 
			 <p>Exceptie: <%=e.getMessage()%></p> 
			 <%
 			 	}
 			 %>	
	</TD>
	</TR>
	
	<TR ALIGN=CENTER bgcolor="#DFE8F0">
	 <TD ALIGN=CENTER>	
<%
		try {
			List<Object> list9records = lService.getListRecordsOfAUser(
					usr_id, Lista9.class);
			if ((list9records != null) && (!list9records.isEmpty())) {
				anyrecords = true;
	%>
		 <BR>
		 <P class="table_header">Lista cu lucrarile publicate in volumele unor conferinte nationale cu referenti si comitet de program</P>
		 <TABLE WIDTH=90% ALIGN=CENTER CELLPADDING=1 BORDER=0>
		 	<TR ALIGN=CENTER bgcolor="#DFE8F0">
		 		<Th ALIGN=CENTER class="table_header">Articol</Th>
		 		<Th ALIGN=CENTER class="table_header">Autori</Th>
		 		<Th ALIGN=CENTER class="table_header">Volum</Th>
		 		<Th ALIGN=CENTER class="table_header">Conferinta</Th>
		 		<Th ALIGN=CENTER class="table_header">Locul</Th>
		 		<Th ALIGN=CENTER class="table_header">Data</Th>
		 		<Th ALIGN=CENTER class="table_header">Pag inceput</Th>
		 		<Th ALIGN=CENTER class="table_header">Pag sfarsit</Th>
		 		<Th ALIGN=CENTER class="table_header">Anul</Th>
		 		<Th ALIGN=CENTER class="table_header">Edit.</Th>
		 		<Th ALIGN=CENTER class="table_header">Sterg.</Th>		 		
		 	</TR>
		 <%
		 	int i = 0;
		 			for (Object l : list9records) {
		 				SimpleDateFormat sdf = new SimpleDateFormat(
		 						"dd-MM-yyyy");
		 				Date date = (Date) ((Lista9) l).getDataDesfasurarii();
		 				String data = sdf.format(date);
		 				i++;
		 				String pag = "\"editRecord.jsp?lista=9&record="
		 						+ ((Lista9) l).getIdLista9().toString() + "\"";
		 				String pag2 = "\"deletedRecord.jsp?lista=9&record="
		 						+ ((Lista9) l).getIdLista9().toString() + "\"";
		 %>
			 <TR ALIGN=CENTER bgcolor="#DFE8F0" 
			 	<% 
			 	if(i % 2 == 0){
			 		out.print("class=\"even\"");
			 	}
			 	else 
			 		out.print("class=\"odd\"");
			 	%>>
			 	 <TD ALIGN=CENTER> <%=((Lista9) l).getTitluArticol()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista9) l).getAutorii()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista9) l).getDenumireaVolumului()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista9) l).getDenumireaConferintei()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista9) l).getLoculDesfasurarii()%></TD>
			 	 <TD ALIGN=CENTER> <%=data%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista9) l).getPaginaDeInceput()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista9) l).getPaginaDeSfarsit()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista9) l).getAnul()%></TD>
			 	 <TD ALIGN=CENTER> <a href=<%=pag%>>Editare</a></TD>
			 	 <TD ALIGN=CENTER> <a href=<%=pag2%>>Stergere</a></TD>			 	 
			 	</TR>			 	
			 <%
			 				 	}
			 				 %>	 
		 </TABLE>
		 <%
		 	} else {
		 		}
		 	} catch (Exception e) {
		 %>
		 	 </TABLE>			 
			 <p>Exceptie: <%=e.getMessage()%></p> 
			 <%
 			 	}
 			 %>	
	</TD>
	</TR>
	
	 <TR ALIGN=CENTER bgcolor="#DFE8F0">
	 <TD ALIGN=CENTER>	
<%
		try {
			List<Object> list10records = lService.getListRecordsOfAUser(
					usr_id, Lista10.class);
			if ((list10records != null) && (!list10records.isEmpty())) {
				anyrecords = true;
	%>
		 <BR>
		 <P class="table_header">Lista granturilor si contractelor de cercetare</P>
		 <TABLE WIDTH=90% ALIGN=CENTER CELLPADDING=1 BORDER=0>
		 	<TR ALIGN=CENTER bgcolor="#DFE8F0">
		 		<Th ALIGN=CENTER class="table_header">Tip Grant</Th>
		 		<Th ALIGN=CENTER class="table_header">Perioada</Th>
		 		<Th ALIGN=CENTER class="table_header">Suma</Th>
		 		<Th ALIGN=CENTER class="table_header">Director program</Th>
		 		<Th ALIGN=CENTER class="table_header">Edit.</Th>
		 		<Th ALIGN=CENTER class="table_header">Sterg.</Th>		 		
		 	</TR>
		 <%
		 	int i = 0;
		 			for (Object l : list10records) {
		 				i++;
		 				String pag = "\"editRecord.jsp?lista=10&record="
		 						+ ((Lista10) l).getIdLista10().toString()
		 						+ "\"";
		 				String pag2 = "\"deletedRecord.jsp?lista=10&record="
		 						+ ((Lista10) l).getIdLista10().toString()
		 						+ "\"";
		 %>
			 <TR ALIGN=CENTER bgcolor="#DFE8F0" 
			 	<% 
			 	if(i % 2 == 0){
			 		out.print("class=\"even\"");
			 	}
			 	else 
			 		out.print("class=\"odd\"");
			 	%>>
			 	 <TD ALIGN=CENTER> <%=((Lista10) l).getTipGrant()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista10) l).getPerioada()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista10) l).getSuma()%></TD>
			 	 <TD ALIGN=CENTER> <%=((Lista10) l).getDirectorProgram()%></TD>
			 	 <TD ALIGN=CENTER> <a href=<%=pag%>>Editare</a></TD>
			 	 <TD ALIGN=CENTER> <a href=<%=pag2%>>Stergere</a></TD>			 	 
			 	</TR>			 	
			 <%
			 				 	}
			 				 %>	
		 </TABLE>
		 <%
		 	} else {
		 		}
		 	} catch (Exception e) {
		 %>
		 	 </TABLE>			 
			 <p>Exceptie: <%=e.getMessage()%></p> 
			 <%
 			 	}
		 //sfarsit - daca sunt batut in cap - sfarsit
	 	}
 			 %>	
	<BR>
	</TD>
	</TR>
	 
<%
		 	// COD CA SA AFISEZ LISTELE 11
		 	try
			{
		 	Hashtable<String, ResultSet> records = WebUtil.getSearchService()
		 			.getAllRecords(usr_id);
			
		 	Set<String> keys = records.keySet();

		 	for (String key : keys) {
		 		ResultSet rs = records.get(key);

		 		if (rs != null) {
		 			anyrecords = true;
		 			
		 			String theTable = WebUtil.getGUIService()
		 					.getTableWithEditAndDeleteFromResultSet(rs, key);

		 			if (theTable != null && theTable.length() > 0) {
		 %>

	<TR ALIGN=CENTER bgcolor="#DFE8F0">
	<TD ALIGN=CENTER>
	 
		<%= theTable %>
		
		<BR />
	</TD>
	</TR>
		
<%
					}
				}
			}
		 	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
%>	

		
</TABLE>	
<%
		if (!anyrecords) {
	%>
	<TABLE WIDTH=90% HEIGHT=70% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Nu exista lucrari adaugate de catre utlizatorul logat! </FONT></P>
			</TD>
		</TR>
	</TABLE>
<%
	}
%>
	<jsp:include page="menus/statusBar.jsp" />
</body>
</html>