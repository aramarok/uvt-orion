<html>

<head>
<title>Adaugare Lucrare</title>
</head>
<body>

<%@ page import="com.uvt.team08.orion.domain.model.Lista5" %>
<%@ page import="com.uvt.team08.orion.domain.service.ListsService" %>
<%@ page import="com.uvt.team08.orion.view.WebUtil" %>
<%@ page import="java.util.*" %>

<%!
int user=1;
public ListsService lService = WebUtil.getListsService();
public Lista5 lista5=new Lista5();
%>
	<jsp:include page="menus/menuUser.jsp" />
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>

<%
try
  {
	String titluConf = request.getParameter("TitluConferinta");
	String autori = request.getParameter("Autori");
	String denVolum = request.getParameter("DenVolum");
	String DenManifest = request.getParameter("DenManifestarii");
	String loc = request.getParameter("Loc");
	//TODO: improve date
	Date data=new Date(request.getParameter("Data"));
	int paginaInceput = Integer.parseInt(request.getParameter("PaginaInceput"));
	int paginaSfarsit = Integer.parseInt(request.getParameter("PaginaSfarsit"));
	int anul = Integer.parseInt(request.getParameter("Anul"));
	
	lista5.setTitluConferinta(titluConf);
	lista5.setAutorii(autori);
	lista5.setDenumireaVolumului(denVolum);
	lista5.setDenumireaManifestarii(DenManifest);
	lista5.setLoculDesfasurarii(loc);
	lista5.setDataDesfasurarii(data);
	lista5.setPaginaDeInceput(paginaInceput);
	lista5.setPaginaDeSfarsit(paginaSfarsit);
	lista5.setAnul(anul);

	if (lService.addRecordToList(user, lista5) != null)
	 {
%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
				<P>
					<FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
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
					<FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
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
					<FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
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