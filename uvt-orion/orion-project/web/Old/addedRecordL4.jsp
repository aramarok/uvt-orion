<html>

<head>
<title>Adaugare Lucrare</title>
</head>
<body>

<%@ page import="com.uvt.team08.orion.domain.model.Lista4" %>
<%@ page import="com.uvt.team08.orion.domain.service.ListsService" %>
<%@ page import="com.uvt.team08.orion.view.WebUtil" %>
<%@ page import="java.util.*" %>

<%!
int user=1;
public ListsService lService = WebUtil.getListsService();
public Lista4 lista4=new Lista4();
%>
	<jsp:include page="menus/menuUser.jsp" />
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>

<%
try
  {
	String titluArticol = request.getParameter("TitluArticol");
	String autori = request.getParameter("Autori");
	String denVolum = request.getParameter("DenVolum");
	String DenConferinta = request.getParameter("DenConferinta");
	String loc = request.getParameter("Loc");
	//TODO: improve date
	Date data=new Date(request.getParameter("Data"));
	int paginaInceput = Integer.parseInt(request.getParameter("PaginaInceput"));
	int paginaSfarsit = Integer.parseInt(request.getParameter("PaginaSfarsit"));
	int anul = Integer.parseInt(request.getParameter("Anul"));
	
	lista4.setTitluArticol(titluArticol);
	lista4.setAutorii(autori);
	lista4.setDenumireaVolumului(denVolum);
	lista4.setDenumireaConferintei(DenConferinta);
	lista4.setLoculDesfasurarii(loc);
	lista4.setDataDesfasurarii(data);
	lista4.setPaginaDeInceput(paginaInceput);
	lista4.setPaginaDeSfarsit(paginaSfarsit);
	lista4.setAnul(anul);

	if (lService.addRecordToList(user, lista4) != null)
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