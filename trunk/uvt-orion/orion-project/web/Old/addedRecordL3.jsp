<html>

<head>
<title>Adaugare Lucrare</title>
</head>
<body>

<%@ page import="com.uvt.team08.orion.domain.model.Lista3" %>
<%@ page import="com.uvt.team08.orion.domain.service.ListsService" %>
<%@ page import="com.uvt.team08.orion.view.WebUtil" %>

<%!
int user=1;
public ListsService lService = WebUtil.getListsService();
public Lista3 lista3=new Lista3();
%>
	<jsp:include page="menus/menuUser.jsp" />
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>

<%
try
  {
	String titluArticol = request.getParameter("TitluArticol");
	String autori = request.getParameter("Autori");
	String revista = request.getParameter("Revista");
	int volum = Integer.parseInt(request.getParameter("Volum"));
	int numar = Integer.parseInt(request.getParameter("Numar"));
	int paginaInceput = Integer.parseInt(request.getParameter("PaginaInceput"));
	int paginaSfarsit = Integer.parseInt(request.getParameter("PaginaSfarsit"));
	int anul = Integer.parseInt(request.getParameter("Anul"));
	
	lista3.setTitluArticol(titluArticol);
	lista3.setAutorii(autori);
	lista3.setDenumireaRevistei(revista);
	lista3.setVol(volum);
	lista3.setNr(numar);
	lista3.setPaginaDeInceput(paginaInceput);
	lista3.setPaginaDeSfarsit(paginaSfarsit);
	lista3.setAnul(anul);

	if (lService.addRecordToList(user, lista3) != null)
	 {
%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
				<P>
					<FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">
						Adaugat cu success!
					</FONT>
				</P>
			</TD>
		</TR>
	</TABLE>	 
<%
	 }
	 else
	 {
%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
				<P>
					<FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">
						Eroare la adaugare!
					</FONT>
				</P>
			</TD>
		</TR>
	</TABLE>
<%
     }
  }
catch(Exception e){
%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
				<P>
					<FONT FACE="Arial, sans-serif" SIZE=2 COLOR="000000">
						Exceptie: <%=e.getMessage()%>
					</FONT>
				</P>
			</TD>
		</TR>
	</TABLE>
<%
}
%>
</TABLE>
		<jsp:include page="menus/statusBar.jsp" />
</body>
</html>