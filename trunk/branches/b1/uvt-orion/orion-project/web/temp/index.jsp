<html>

<head>
<title> ORION Project </title>
</head>

<body>

<%@ page import="com.uvt.team08.orion.domain.model.User" %>
<%@ page import="com.uvt.team08.orion.domain.model.Lista1" %>
<%@ page import="com.uvt.team08.orion.domain.model.Lista2" %>
<%@ page import="com.uvt.team08.orion.domain.model.Right" %>
<%@ page import="com.uvt.team08.orion.domain.service.Service" %>
<%@ page import="com.uvt.team08.orion.domain.service.UserService" %>
<%@ page import="com.uvt.team08.orion.domain.service.ListsService" %>
<%@ page import="com.uvt.team08.orion.view.WebUtil" %>
<%@ page import="org.hibernate.HibernateException" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashSet" %>
<%@ page import="java.util.Set" %>


<%!

public User u = null;
public User u2 = null;
public Service s =  WebUtil.getService();
public UserService userService = WebUtil.getUserService();
public ListsService lService = WebUtil.getListsService();
public Set<Lista1> l1 = new HashSet<Lista1>();
public Set<Lista2> l2 = new HashSet<Lista2>();
%>


<%


//remove list from user #start#:
//	lService.deleteRecordFromList1(1,1);
//lService.deleteRecordFromList(1,3 ,Lista1.class);

//remove list from user #end#




// modify user test #start
/*
User newUser = userService.getUser(2);
newUser.setBirthDate(new Date());
newUser.setEmailAddress("noua adresa de mail@lkajsfa.blah");
userService.modify(1, 2, newUser, false);
*/
// modify user test #end





//login test #start

try{
 System.out.println("Login attempt...");
 User u = userService.login("admin@uvt.ro", "parola");
 System.out.println("Succes login!");
 System.out.println("User logged in: " + u);
} catch (Exception e){
	System.out.println("Invalid user/password");
}

//login test #end












//get records of a list of a user #start
/*
try{
 System.out.println("Get records of type list2 of user with id 1 ");
 List<Object> list2records = lService.getListRecordsOfAUser(1, Lista2.class);
 if (!list2records.isEmpty()){
	 System.out.println("Records of list2 of user with id 1 are:" );
	 for (Object l : list2records){
		 System.out.println(((Lista2)l).getIdLista2());
	 }
 } else {
	 System.out.println("No records in the list2 for userid1");
 }
} catch (Exception e){
	System.out.println("Invalid data");
}
*/
//get records of a list of a user #end







//modify a record of a list type of a user #start
/*
try{
 System.out.println("modify record of listtype list2 of user with id 1 ");
 Lista2 newList = new Lista2();
 newList.setAnul(3000);
 newList.setAutorii("strabunii");
 newList.setVol(1010111);
 Lista2 modifiedRecord = (Lista2)lService.modifyRecordFromList(1, 2, newList, Lista2.class);
 System.out.println("modified lists ID: " + modifiedRecord.getIdLista2());
} catch (Exception e){
	System.out.println("Exception!!");
	e.printStackTrace();
}
*/
//get records of a list of a user #end












//add lists to user #start#: 
/*
Lista1 a1 = new Lista1();
a1.setAnul(1956);
a1.setAutorii("Nicolae Iorga");
a1.setNr(3);
a1.setDenumireaRevistei("foaie simpla");
a1.setVol(2);
Lista1 b1 = new Lista1();
b1.setAnul(1993);
b1.setAutorii("Nichita Stanescu");
b1.setFactorImpact(0.2312);
Lista1 c1 = new Lista1();
c1.setAutorii("Velicescu ....");

Lista2 a2 = new Lista2();
a2.setDenumireaRevistei("denumirea revistei");
a2.setNr(5);
a2.setTitluArticol("titlu articol");
a2.setPaginaDeSfarsit(4623);
Lista2 b2 = new Lista2();
b2.setAnul(2973);
b2.setAutorii("XWWW");
b2.setDenumireaRevistei("010100111010111");
b2.setVol(9101);
b2.setPaginaDeInceput(0);
b2.setPaginaDeSfarsit(999999);
b2.setTitluArticol("000011100111");
*/

//Lista1 llll = lService.addRecordToList1(1, b1);
/*
Lista2 llll = (Lista2)lService.addRecordToList(4, b2);
System.out.println(llll.getIdLista2());
*/

//lService.deleteRecordFromList(4, 1, Lista2.class);


/*
l1.add(a1);
l1.add(b1);
l1.add(c1);
l2.add(a2);
l2.add(b2);
new User(
User utm = new User(new Date().toString()+"@yahoo.com", "test_password", Right.ADMINISTRATOR);
utm.setLista1(l1);
userService.modify(1, 2, utm);
*/
//add lists to user #end#









/*
User r = userService.getUser(3);
List<User> list = userService.getAllUsers();
for (User us :list){
	System.out.println(us.getUserName());
}
*/







/*
User newUser = new User("newEmailAddress@blah.net", "newPassword", Right.ADMINISTRATOR);
userService.register(1, newUser);//.modify(2, 1,newUser);
*/




%>



</body>
</html>