<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	response.setHeader("Cache-Control", "no-store, no-cache");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>
<html>

<head>
<title>Stergere Lucrare</title>
</head>
<body style="padding-top: 0px; margin-top: 0px;">

<%@ page import="com.uvt.team08.orion.domain.model.Lista1"%>
<%@ page import="com.uvt.team08.orion.domain.model.Lista2"%>
<%@ page import="com.uvt.team08.orion.domain.model.Lista3"%>
<%@ page import="com.uvt.team08.orion.domain.model.Lista4"%>
<%@ page import="com.uvt.team08.orion.domain.model.Lista5"%>
<%@ page import="com.uvt.team08.orion.domain.model.Lista6"%>
<%@ page import="com.uvt.team08.orion.domain.model.Lista7"%>
<%@ page import="com.uvt.team08.orion.domain.model.Lista8"%>
<%@ page import="com.uvt.team08.orion.domain.model.Lista9"%>
<%@ page import="com.uvt.team08.orion.domain.model.Lista10"%>
<%@ page import="com.uvt.team08.orion.domain.model.TipGrant"%>
<%@ page import="com.uvt.team08.orion.domain.service.ListsService"%>
<%@ page import="com.uvt.team08.orion.view.WebUtil"%>

<%@ include file="chooseMenu.jsp"%>
<%! 
	public int nr=0;
	public int idrecord=0;
%>
<%
	try {
		nr = Integer.parseInt(request.getParameter("lista"));
		idrecord = Integer.parseInt(request.getParameter("record"));
	} catch (Exception e) {
		e.printStackTrace();
	}
%>

<%!public int user = -1;
	public ListsService lService = WebUtil.getListsService();%>
<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>

	<%
		if (nr == 1) {
			try {
				user = usr_id;

				Lista1 lista1 = new Lista1();
				lista1 = (Lista1) lService.getList(idrecord, Lista1.class);				
				if (lService.deleteRecordFromList(user,idrecord,Lista1.class)) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Sters cu success! </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		} else {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Eroare la stergere! </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		}
			} catch (Exception e) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Exceptie: <%=e.getMessage()%> </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		}
		} else if (nr == 2) {
			try {
				user = usr_id;

				Lista2 lista2 = new Lista2();
				lista2 = (Lista2) lService.getList(idrecord, Lista2.class);				
				if (lService.deleteRecordFromList(user,idrecord,Lista2.class)) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Sters cu success! </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		} else {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Eroare la stergere! </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		}
			} catch (Exception e) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Exceptie: <%=e.getMessage()%> </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		}
		} else if (nr == 3) {
			try {
				user = usr_id;

				Lista3 lista3 = new Lista3();
				lista3 = (Lista3) lService.getList(idrecord, Lista3.class);				
				if (lService.deleteRecordFromList(user,idrecord,Lista3.class)) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Sters cu success! </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		} else {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Eroare la stergere! </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		}
			} catch (Exception e) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Exceptie: <%=e.getMessage()%> </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		}
		} else if (nr == 4) {
			try {
				user = usr_id;

				Lista4 lista4 = new Lista4();
				lista4 = (Lista4) lService.getList(idrecord, Lista4.class);				
				if (lService.deleteRecordFromList(user,idrecord,Lista4.class)) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Sters cu success! </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		} else {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Eroare la stergere! </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		}
			} catch (Exception e) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Exceptie: <%=e.getMessage()%> </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		}
		} else if (nr == 5) {
			try {
				user = usr_id;

				Lista5 lista5 = new Lista5();
				lista5 = (Lista5) lService.getList(idrecord, Lista5.class);				
				if (lService.deleteRecordFromList(user,idrecord,Lista5.class)) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Sters cu success! </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		} else {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Eroare la stergere! </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		}
			} catch (Exception e) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Exceptie: <%=e.getMessage()%> </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		}
		} else if (nr == 6) {
			try {
				user = usr_id;

				Lista6 lista6 = new Lista6();
				lista6 = (Lista6) lService.getList(idrecord, Lista6.class);				
				if (lService.deleteRecordFromList(user,idrecord,Lista6.class)) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Sters cu success! </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		} else {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Eroare la stergere! </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		}
			} catch (Exception e) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Exceptie: <%=e.getMessage()%> </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		}
		} else if (nr == 7) {
			try {
				user = usr_id;

				Lista7 lista7 = new Lista7();
				lista7 = (Lista7) lService.getList(idrecord, Lista7.class);				
				if (lService.deleteRecordFromList(user,idrecord,Lista7.class)) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Sters cu success! </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		} else {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Eroare la stergere! </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		}
			} catch (Exception e) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Exceptie: <%=e.getMessage()%> </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		}
		} else if (nr == 8) {
			try {
				user = usr_id;

				Lista8 lista8 = new Lista8();
				lista8 = (Lista8) lService.getList(idrecord, Lista8.class);				
				if (lService.deleteRecordFromList(user,idrecord,Lista8.class)) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Sters cu success! </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		} else {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Eroare la stergere! </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		}
			} catch (Exception e) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Exceptie: <%=e.getMessage()%> </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		}
		} else if (nr == 9) {
			try {
				user = usr_id;

				Lista9 lista9 = new Lista9();
				lista9 = (Lista9) lService.getList(idrecord, Lista9.class);				
				if (lService.deleteRecordFromList(user,idrecord,Lista9.class)) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Sters cu success! </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		} else {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Eroare la stergere! </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		}
			} catch (Exception e) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Exceptie: <%=e.getMessage()%> </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		}
		} else if (nr == 10) {
			try {
				user = usr_id;

				Lista10 lista10 = new Lista10();
				lista10 = (Lista10) lService.getList(idrecord, Lista10.class);				
				if (lService.deleteRecordFromList(user,idrecord,Lista10.class)) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Sters cu success! </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		} else {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Eroare la stergere! </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		}
			} catch (Exception e) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Exceptie: <%=e.getMessage()%> </FONT></P>
			</TD>
		</TR>
	</TABLE>
	<%
		}
		}
	%>


</TABLE>
<jsp:include page="menus/statusBar.jsp" />
</body>
</html>