<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<%  Class.forName("oracle.jdbc.driver.OracleDriver"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<%

Connection con = null;

Statement stmt = null;

ResultSet resultset = null;

con = DriverManager.getConnection("jdbc:oracle:thin:jon/decker@10.110.16.102:1521:XE");

stmt = con.createStatement();

resultset = stmt.executeQuery("SELECT * FROM employees");

 

%>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

</head>

<body>

	<center>TEST</center>

	<TABLE BORDER="1">

		<TR>

			<TH>ID</TH>

			<TH>FName</TH>

			<TH>LName</TH>

			<TH>Email</TH>

			<TH>Phone</TH>

			<TH>Hiredate</TH>

			<TH>JOB_ID</TH>

			<TH>SALARY</TH>

			<TH>COM</TH>

			<TH>MANAGER</TH>

			<TH>DEPT</TH>

		</TR>

		<% while(resultset.next()){ %>

		<TR>

			<TD><%= resultset.getString(1) %></td>

			<TD><%= resultset.getString(2) %></TD>

			<TD><%= resultset.getString(3) %></TD>

			<TD><%= resultset.getString(4) %></TD>

			<TD><%= resultset.getString(5) %></TD>

			<TD><%= resultset.getString(6) %></TD>

			<TD><%= resultset.getString(7) %></TD>

			<TD><%= resultset.getString(8) %></TD>

			<TD><%= resultset.getString(9) %></TD>

			<TD><%= resultset.getString(10) %></TD>

		</TR>

		<% }

                                resultset.close();

        stmt.close();

        con.close();

        %>

	</TABLE>

</body>

</html>