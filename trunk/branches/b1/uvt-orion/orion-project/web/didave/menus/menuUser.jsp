<%@ include file="menuList.jsp" %>
<link href="style.css" rel="stylesheet" type="text/css">

<table width=100% height=100% CELLSPACING=0 BORDER=0>
	<tr height="400px">
		<td>
		<TABLE width=100% height=100% CELLSPACING=0 BORDER=0>
			<%
				for (int i = 0; i < menuList.length; i++)
				{
					if (menuList[i][2].equals("0"))
					{
						out.println("<TR class=\"menu_back\">");
					
						if (menuList[i][0] == null)
							out.println("<TD> </BR> </TD>");
						else if (menuList[i][1] == null)
							out.println("<TD class=\"menu_group\">" + menuList[i][0] + "</TD>");			
						else out.println("<TD class=\"field_name\"> <a class=\"aaction\" href=\"" + 
								menuList[i][1] + "\">" + menuList[i][0] + "</a></TD>");
						
						out.println("</TR>");
					}
				}					
			%>
		</TABLE>
		</td>
	</tr>
	<tr class="menu_back" height=100%>
		<td>
		</td>
	</tr>
</table>
