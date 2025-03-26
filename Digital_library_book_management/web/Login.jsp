<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%> 
<!DOCTYPE html> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>Librarian Page</title> 
</head> 
<body> 
<% 
//java scriptlet 
String S1=request.getParameter("name"); 
String S2=request.getParameter("pass"); 
try 
{ 
//Database connectivity code 
Class.forName("com.mysql.jdbc.Driver"); 
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root"); 
PreparedStatement pst=conn.prepareStatement("select * from librarian where name= ?"); 
pst.setString(1,S1); 
ResultSet rs=pst.executeQuery(); 
if(rs.next()) 
                { 
                    if(rs.getString(2).equals(S2)) 
                    { 
                        out.println("Loginn sucessfull.........."); 
                        response.sendRedirect("details.jsp");
                    } 
                    else 
                    { 
                        //wrong password 
                        //login page 
                        out.println("password incorrect....!!, please try again.."); 
                        %> 
                         <jsp:include page="Login.html"></jsp:include> 
                        <% 
                    } 
                } 
                else 
                { 
                    out.print("Username Incorrect "); 
                    %> 
                    <jsp:include page="Login.html"></jsp:include> 
                    <% 
                } 
            } 
            catch(Exception e) 
            { 
                    out.print("Exception= "+e); 
            }    
        %>        
    </body> 
</html>