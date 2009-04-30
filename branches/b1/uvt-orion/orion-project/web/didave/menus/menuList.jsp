<%@ page import="java.util.ArrayList" %>
<%
String[][] menuList = {{"Meniu", null, "0"},
					   {"Home", "home.jsp", "0"},	
					   {"Adaugare", "chooseList.jsp", "0"},
					   {"Vizualizare", "viewRecords.jsp", "0"},
					   {"Cautare", "searchRecord.jsp", "0"},
					   {null, null, "0"},
					   {"Editare cont", "edit.jsp", "0"},
					   {"Delogare", "login.jsp?logoff=1", "0"},
					   {null, null, "1"},
					   {"Meniu admin", null, "1"},
					   {"Adaugare cont", "edit_user.jsp?uid=0", "1"},
					   {"Vizualizare utilizatori", "users_list.jsp", "1"}};
%>

