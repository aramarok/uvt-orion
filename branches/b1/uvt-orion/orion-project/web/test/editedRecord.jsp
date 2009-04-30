<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	response.setHeader("Cache-Control", "no-store, no-cache");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>
<html>

<head>
<title>Editare Lucrare</title>
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
		nr = Integer.parseInt(request.getParameter("nr"));
		idrecord = Integer.parseInt(request.getParameter("idrecord"));
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
				String titluArticol = request.getParameter("TitluArticol");
				String autori = request.getParameter("Autori");
				String revista = request.getParameter("Revista");
				int volum = Integer.parseInt(request.getParameter("Volum"));
				int numar = Integer.parseInt(request.getParameter("Numar"));
				int paginaInceput = Integer.parseInt(request
						.getParameter("PaginaInceput"));
				int paginaSfarsit = Integer.parseInt(request
						.getParameter("PaginaSfarsit"));
				int anul = Integer.parseInt(request.getParameter("Anul"));
				double factorImpact = Double.parseDouble(request
						.getParameter("FactorImpact"));

				Lista1 lista1 = new Lista1();
				lista1.setTitluArticol(titluArticol);
				lista1.setAutorii(autori);
				lista1.setDenumireaRevistei(revista);
				lista1.setVol(volum);
				lista1.setNr(numar);
				lista1.setPaginaDeInceput(paginaInceput);
				lista1.setPaginaDeSfarsit(paginaSfarsit);
				lista1.setAnul(anul);
				lista1.setFactorImpact(factorImpact);
				if (lService.modifyRecordFromList(user, idrecord, lista1,
						Lista1.class) != null) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Editat cu success! </FONT></P>
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
			Eroare la editare! </FONT></P>
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
				String titluArticol = request.getParameter("TitluArticol");
				String autori = request.getParameter("Autori");
				String revista = request.getParameter("Revista");
				int volum = Integer.parseInt(request.getParameter("Volum"));
				int numar = Integer.parseInt(request.getParameter("Numar"));
				int paginaInceput = Integer.parseInt(request
						.getParameter("PaginaInceput"));
				int paginaSfarsit = Integer.parseInt(request
						.getParameter("PaginaSfarsit"));
				int anul = Integer.parseInt(request.getParameter("Anul"));

				Lista2 lista2 = new Lista2();
				lista2.setTitluArticol(titluArticol);
				lista2.setAutorii(autori);
				lista2.setDenumireaRevistei(revista);
				lista2.setVol(volum);
				lista2.setNr(numar);
				lista2.setPaginaDeInceput(paginaInceput);
				lista2.setPaginaDeSfarsit(paginaSfarsit);
				lista2.setAnul(anul);

				if (lService.modifyRecordFromList(user, idrecord, lista2,
						Lista2.class) != null) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Editat cu success! </FONT></P>
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
			Eroare la editare! </FONT></P>
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
				String titluArticol = request.getParameter("TitluArticol");
				String autori = request.getParameter("Autori");
				String revista = request.getParameter("Revista");
				int volum = Integer.parseInt(request.getParameter("Volum"));
				int numar = Integer.parseInt(request.getParameter("Numar"));
				int paginaInceput = Integer.parseInt(request
						.getParameter("PaginaInceput"));
				int paginaSfarsit = Integer.parseInt(request
						.getParameter("PaginaSfarsit"));
				int anul = Integer.parseInt(request.getParameter("Anul"));

				Lista3 lista3 = new Lista3();
				lista3.setTitluArticol(titluArticol);
				lista3.setAutorii(autori);
				lista3.setDenumireaRevistei(revista);
				lista3.setVol(volum);
				lista3.setNr(numar);
				lista3.setPaginaDeInceput(paginaInceput);
				lista3.setPaginaDeSfarsit(paginaSfarsit);
				lista3.setAnul(anul);

				if (lService.modifyRecordFromList(user, idrecord, lista3,
						Lista3.class) != null) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Editat cu success! </FONT></P>
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
			Eroare la editare! </FONT></P>
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
				String titluArticol = request.getParameter("TitluArticol");
				String autori = request.getParameter("Autori");
				String denVolum = request.getParameter("DenVolum");
				String DenConferinta = request
						.getParameter("DenConferinta");
				String loc = request.getParameter("Loc");
				//TODO: improve date
				Date data = new Date(request.getParameter("Data"));
				int paginaInceput = Integer.parseInt(request
						.getParameter("PaginaInceput"));
				int paginaSfarsit = Integer.parseInt(request
						.getParameter("PaginaSfarsit"));
				int anul = Integer.parseInt(request.getParameter("Anul"));

				Lista4 lista4 = new Lista4();
				lista4.setTitluArticol(titluArticol);
				lista4.setAutorii(autori);
				lista4.setDenumireaVolumului(denVolum);
				lista4.setDenumireaConferintei(DenConferinta);
				lista4.setLoculDesfasurarii(loc);
				lista4.setDataDesfasurarii(data);
				lista4.setPaginaDeInceput(paginaInceput);
				lista4.setPaginaDeSfarsit(paginaSfarsit);
				lista4.setAnul(anul);

				if (lService.modifyRecordFromList(user, idrecord, lista4,
						Lista4.class) != null) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Editat cu success! </FONT></P>
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
			Eroare la editare! </FONT></P>
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
				String titluConf = request.getParameter("TitluConferinta");
				String autori = request.getParameter("Autori");
				String denVolum = request.getParameter("DenVolum");
				String DenManifest = request
						.getParameter("DenManifestarii");
				String loc = request.getParameter("Loc");
				//TODO: improve date
				Date data = new Date(request.getParameter("Data"));
				int paginaInceput = Integer.parseInt(request
						.getParameter("PaginaInceput"));
				int paginaSfarsit = Integer.parseInt(request
						.getParameter("PaginaSfarsit"));
				int anul = Integer.parseInt(request.getParameter("Anul"));

				Lista5 lista5 = new Lista5();
				lista5.setTitluConferinta(titluConf);
				lista5.setAutorii(autori);
				lista5.setDenumireaVolumului(denVolum);
				lista5.setDenumireaManifestarii(DenManifest);
				lista5.setLoculDesfasurarii(loc);
				lista5.setDataDesfasurarii(data);
				lista5.setPaginaDeInceput(paginaInceput);
				lista5.setPaginaDeSfarsit(paginaSfarsit);
				lista5.setAnul(anul);

				if (lService.modifyRecordFromList(user, idrecord, lista5,
						Lista5.class) != null) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Editat cu success! </FONT></P>
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
			Eroare la editare! </FONT></P>
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
				String titluMonog = request.getParameter("TitluMonografie");
				String autori = request.getParameter("Autori");
				String editura = request.getParameter("Editura");
				String loc = request.getParameter("Loc");
				int anul = Integer.parseInt(request.getParameter("An"));
				int nrpag = Integer.parseInt(request
						.getParameter("NrPagini"));
				
				Lista6 lista6 = new Lista6();
				lista6.setTitluMonografie(titluMonog);
				lista6.setAutorii(autori);
				lista6.setEditura(editura);
				lista6.setLocalitatea(loc);
				lista6.setNumarPagini(nrpag);
				lista6.setAnulAparitiei(anul);

				if (lService.modifyRecordFromList(user, idrecord, lista6,
						Lista6.class) != null) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Editat cu success! </FONT></P>
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
			Eroare la editare! </FONT></P>
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
				String titlu = request.getParameter("Titlu");
				String autori = request.getParameter("Autori");
				String editura = request.getParameter("Editura");
				String loc = request.getParameter("Loc");
				int anul = Integer.parseInt(request.getParameter("An"));
				int nrpag = Integer.parseInt(request
						.getParameter("NrPagini"));

				Lista7 lista7 = new Lista7();
				lista7.setTitlu(titlu);
				lista7.setAutorii(autori);
				lista7.setEditura(editura);
				lista7.setLocalitatea(loc);
				lista7.setNumarPagini(nrpag);
				lista7.setAnulAparitiei(anul);

				if (lService.modifyRecordFromList(user, idrecord, lista7,
						Lista7.class) != null) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Editat cu success! </FONT></P>
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
			Eroare la editare! </FONT></P>
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
				String autor = request.getParameter("Autor");
				String revista = request.getParameter("DenRevista");
				int volum = Integer.parseInt(request.getParameter("Volum"));
				int nrpag = Integer.parseInt(request
						.getParameter("NrPagini"));
				int anul = Integer.parseInt(request.getParameter("An"));

				Lista8 lista8 = new Lista8();
				lista8.setAutorulCareCiteaza(autor);
				lista8.setDenumireaRevistei(revista);
				lista8.setVol(volum);
				lista8.setNumarPagini(nrpag);
				lista8.setAnul(anul);

				if (lService.modifyRecordFromList(user, idrecord, lista8,
						Lista8.class) != null) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Editat cu success! </FONT></P>
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
			Eroare la editare! </FONT></P>
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
				String titluArticol = request.getParameter("TitluArticol");
				String autori = request.getParameter("Autori");
				String denVolum = request.getParameter("DenVolum");
				String DenConferinta = request
						.getParameter("DenConferinta");
				String loc = request.getParameter("Loc");
				//TODO: improve date
				Date data = new Date(request.getParameter("Data"));
				int paginaInceput = Integer.parseInt(request
						.getParameter("PaginaInceput"));
				int paginaSfarsit = Integer.parseInt(request
						.getParameter("PaginaSfarsit"));
				int anul = Integer.parseInt(request.getParameter("Anul"));

				Lista9 lista9 = new Lista9();
				lista9.setTitluArticol(titluArticol);
				lista9.setAutorii(autori);
				lista9.setDenumireaVolumului(denVolum);
				lista9.setDenumireaConferintei(DenConferinta);
				lista9.setLoculDesfasurarii(loc);
				lista9.setDataDesfasurarii(data);
				lista9.setPaginaDeInceput(paginaInceput);
				lista9.setPaginaDeSfarsit(paginaSfarsit);
				lista9.setAnul(anul);

				if (lService.modifyRecordFromList(user, idrecord, lista9,
						Lista9.class) != null) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Editat cu success! </FONT></P>
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
			Eroare la editare! </FONT></P>
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
				String tipG = request.getParameter("TipGrant");
				int perioada = Integer.parseInt(request
						.getParameter("Perioada"));
				double suma = Double.parseDouble(request
						.getParameter("Suma"));
				String director = request.getParameter("DirectorProg");

				Lista10 lista10 = new Lista10();
				lista10.setTipGrant(TipGrant.getTipGrantByName(tipG));
				lista10.setPerioada(perioada);
				lista10.setSuma(suma);
				lista10.setDirectorProgram(director);

				if (lService.modifyRecordFromList(user, idrecord, lista10,
						Lista10.class) != null) {
	%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
			Editat cu success! </FONT></P>
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
			Eroare la editare! </FONT></P>
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