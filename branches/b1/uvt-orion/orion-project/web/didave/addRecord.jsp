<%@ page import="com.uvt.team08.orion.domain.service.GUIService" %>
<%@ page import="com.uvt.team08.orion.domain.model.Metatable" %>
<%@ page import="com.uvt.team08.orion.domain.model.FieldFilter" %>
<%@ page import="com.uvt.team08.orion.domain.service.TableService" %>
<%@ page import="com.uvt.team08.orion.domain.service.InsertService" %>
<%@ page import="com.uvt.team08.orion.view.WebUtil" %>
<%@ page import="com.uvt.team08.orion.meta.Tables" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	response.setHeader("Cache-Control", "no-store, no-cache");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>

<HTML>
<HEAD>
<title>Adaugare Lucrare</title>
<link href="style.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="calendar.js">
</script>

<script type="text/javascript" src="validateAll.js">
</script>

<%!	
	public String nrlista;	

	int user=-1;
	public TableService tService = WebUtil.getTableService();
	public InsertService iService = WebUtil.getInsertService();
	public List<Metatable> tabele;
	public Metatable tabela;
	public ArrayList<FieldFilter> listFieldFilter;
%>

<script type="text/javascript">
var bas_cal,dp_cal,ms_cal;      
window.onload = function () 
{
	dp_cal  = new Epoch('epoch_popup','popup',document.getElementById('popup_container'))
};
</script>

</HEAD>

<BODY style="padding-top: 0px; margin-top: 0px;">

<%@ include file="chooseMenu.jsp" %>


<%
		nrlista = "listaX";

		try 
		{ 
			nrlista=request.getParameter("nume_tabela");
		} 	
		catch (Exception e) 
		{ 
			e.printStackTrace();
		}
		
		String tableID = nrlista;
		
		try
		  {
			user=usr_id;
			
			/******************************/
			String numeTabela = request.getParameter("nume_tabela");
			
			String id_user = request.getParameter("id_user");	
			/******************************/
			
			tabele = tService.getTable(numeTabela);
			
			listFieldFilter = new ArrayList<FieldFilter>();
			if (user >= 0) listFieldFilter.add(FieldFilter.newFieldFilter("id_user", "", "" + user, "" + user, "int", ""));

			for (Iterator<Metatable> tablei = tabele.iterator(); tablei.hasNext();)
			{
				tabela = tablei.next();
				String numeC = tabela.getCampTabela();
				String numeV = tabela.getCampVizual();
				String tipC = tabela.getTip().toLowerCase();
				String extra = tabela.getExtraStuf();
						
				
				FieldFilter ehhe;
				listFieldFilter.add(ehhe = FieldFilter.newFieldFilter(numeC, numeV, 
						request.getParameter(numeC), request.getParameter(numeC), 
						tipC, extra));
				
				ehhe.container(listFieldFilter);
			} 
			
			String err;
				//out.println(iService.sqlInsert(numeTabela, listFieldFilter));
				if (request.getParameter("inserare") != null)
				{
					err = iService.insertRecord(numeTabela, listFieldFilter);										
					if (err.substring(0, 6).equals("Eroare"))
					{
						throw new Exception(err);
					}
					else throw new Exception("succes la inserare");
				}
				else throw new Exception("");		     
		  }
		catch(Exception e){
			
			String mesaj_eronat = e.getMessage();
			if (mesaj_eronat == null) mesaj_eronat = ""; %>
							

			<TABLE WIDTH="100%" HEIGHT="100%" ALIGN="CENTER" CELLSPACING="0" BORDER="0">
			<FORM NAME="Forma" ACTION="addRecord.jsp" METHOD ="GET">
					
				<COL WIDTH=38%>
				<COL WIDTH=2%>
				<COL WIDTH=50%>
				
				<tr height=20px>
					<td colspan=3 class="content_header" style="padding-left: 45px; padding-top: 5px;" valign="center">
						Adaugare Lucrare : <%= Tables.getTableNameByID(tableID) %>
					</td>
				</tr>
<%
	 // OTHER LIST OR ERROR
	 
	GUIService gui = WebUtil.getGUIService();

	if (mesaj_eronat.length() > 0)
		if (mesaj_eronat.equals("succes la inserare"))
		{
			%>
			<tr>
				<td colspan=3 align="center" class="contents_important_message">
				<%	
					out.println("Adaugarea a avut succes.");
				%> 		
				</td>
			</tr>
			<%
		}
		else 
		{
			%>
			<tr bgcolor="MAGENTA"  height="18">
				<td colspan=3 align="center" class="contents_important_message">
				<%
					out.println(mesaj_eronat);
					//out.println(new com.uvt.team08.orion.domain.service.GUIServiceBean().getExceptionDetails(e));
				%> 
				</td>
			</tr>
			<%
		}
	out.println(gui.getInsertForm(listFieldFilter, tableID));
%>

		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT class="contents">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER class="contents">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT class="contents">
				<P>
				<input class="field_value"  TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER class="contents">
			<P><BR></P>
			</TD>
		</TR>
	 		<input type="hidden" name="nume_tabela" value=<%= tableID %> />
			<input type="hidden" name="inserare" value="é" />
		</FORM>
	</TABLE>
	
			<%
		}
		%>
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