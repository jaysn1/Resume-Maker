<%-- 
    Document   : main
    Created on : 8 Mar, 2018, 11:57:55 PM
    Author     : ADMIN
--%>

<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Resume</title>
    </head>
    <body>
        <% if(session.getAttribute("username")!=null){ 
                String username=(String)session.getAttribute("username"); 
            } 
        Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/database_ex","root","");
            Statement s=c.createStatement();

            
        String name=request.getParameter("name");
        String no=request.getParameter("number");
        String id=request.getParameter("id");
        
        String day=request.getParameter("day");
        String month=request.getParameter("month");
        String year=request.getParameter("year");
        String dob=day+"-"+month+"-"+year;
        SimpleDateFormat formatter2=new SimpleDateFormat("dd-MMM-yyyy");
        Date date2=formatter2.parse(dob);
        String dateToStr = DateFormat.getDateInstance().format(date2);
//        out.print(dateToStr);
        
        String career=request.getParameter("career");
        
        String res1=request.getParameter("res1");
        String year1=request.getParameter("year1");
        String bu1=request.getParameter("bu1");
        
        String res2=request.getParameter("res2");
        String year2=request.getParameter("year2");
        String bu2=request.getParameter("bu2");
        
        String course=request.getParameter("course");
        String res3=request.getParameter("res3");
        String year3=request.getParameter("year3");
        String bu3=request.getParameter("bu3");
        
        String prog1_name=request.getParameter("prog1_name");
        String prog1_res=request.getParameter("prog1_res");
        String prog1_year=request.getParameter("prog1_year");
        String prog1_uni=request.getParameter("prog1_uni");
        
        String prog2_name=request.getParameter("prog2_name");
        String prog2_res=request.getParameter("prog2_res");
        String prog2_year=request.getParameter("prog2_year");
        String prog2_uni=request.getParameter("prog2_uni");
        
        String prog3_name=request.getParameter("prog3_name");
        String prog3_res=request.getParameter("prog3_res");
        String prog3_year=request.getParameter("prog3_year");
        String prog3_uni=request.getParameter("prog3_uni");
        
        String skill1=request.getParameter("skill1");
        String skill2=request.getParameter("skill2");
        String skill3=request.getParameter("skill3");
        String skill4=request.getParameter("skill4");
        String skill5=request.getParameter("skill5");
        
        String c1_name=request.getParameter("c1_name");
        String c1_year=request.getParameter("c1_year");
        String c1_post=request.getParameter("c1_post");
        String c1_num=request.getParameter("c1_num");
        
        String c2_name=request.getParameter("c2_name");
        String c2_year=request.getParameter("c2_year");
        String c2_post=request.getParameter("c2_post");
        String c2_num=request.getParameter("c2_num");
        
        String c3_name=request.getParameter("c3_name");
        String c3_year=request.getParameter("c3_year");
        String c3_post=request.getParameter("c3_post");
        String c3_num=request.getParameter("c3_num");
        
        String exp=request.getParameter("exp");
        
        %>
        
<!--        <h1 align="center">RESUME</h1>
	<hr style="background-color: black; height: 2px"  width="1100">
	<hr width="1000">-->

<br><br><br>
<div class="personal">
    <!--<h2>Personal Details:</h2>-->
    <h2><%=name%></h2>
    <h3>Contact: <%=no%><br>
    Email Id.: &nbsp<%=id%></h3>
    
</div>
    <br><br>
    
    <div> 
        <c:set var="career" value="<%=career%>"/>
        <c:if test="${not empty career}">
            <h2>Career Objective:</h2>
            <%=career%>
        </c:if>
    </div>
    <br><br>
    <div class="experience">
        <c:set var="exp" value="<%=exp%>"/>
        <c:if test="${exp eq 'yes'}">
            <h2>Experience:</h2>
            Worked with <%=c1_name%> at the post of <%=c1_post%> for <%=c1_year%> years.<br>
            Company Contact number: <%=c1_num%>.
            <br><br>
            Worked with <%=c2_name%> at the post of <%=c2_post%> for <%=c2_year%> years.<br>
            Company Contact number: <%=c2_num%>.
            <br><br>
            Worked with <%=c3_name%> at the post of <%=c3_post%> for <%=c3_year%> years.<br>
            Company Contact number: <%=c3_num%>.
            <br><br>
        </c:if>
    </div>
<div class="tb">
	<h2>Education Details:</h2>
	<table border="1" align="center">
		<tr align="center" >
			<th>Qualification</th>
			<th>Name of Board/University</th>
			<th>Year of Passing</th>
			<th>Percentage/grade</th>
		</tr>
                <!--<p id="row1" >-->
                <c:set var="prog3_name" value="<%=prog3_name%>"/>
                <c:set var="prog2_name" value="<%=prog2_name%>"/>
                <c:set var="prog1_name" value="<%=prog1_name%>"/>
                <c:set var="course" value="<%=course%>"/>

                    <c:if test="${not empty prog3_name}">
                <tr align="center" >
			<td ><%=prog3_name%></td>
			<td ><%=prog3_uni%></td>
			<td ><%=prog3_year%></td>
			<td ><%=prog3_res%></td>
		</tr>
                </c:if>
                
                    <c:if test="${not empty prog2_name}">
                <tr align="center" >
			<td ><%=prog2_name%></td>
			<td ><%=prog2_uni%></td>
			<td ><%=prog2_year%></td>
			<td ><%=prog2_res%></td>
		</tr>
                </c:if>
                
                    <c:if test="${not empty prog1_name}">
                <tr align="center" >
			<td ><%=prog1_name%></td>
			<td ><%=prog1_uni%></td>
			<td ><%=prog1_year%></td>
			<td ><%=prog1_res%></td>
		</tr>
                </c:if>
                    <c:if test="${not empty course}">
                <tr align="center" >
			<td ><%=course%></td>
			<td ><%=bu3%></td>
			<td ><%=year3%></td>
			<td ><%=res3%></td>
		</tr>
                </c:if>
        </p>
<!--                <script>
                    if(course==null)
                    {
                        document.getElementById("row1").style.display="none";
                    }
                    </script>-->
		<tr align="center">
			<td >HSC</td>
			<td><%=bu2%></td>
			<td><%=year2%></td>
			<td><%=res2%></td>
		</tr>
		<tr align="center">
			<td >SSC</td>
			<td><%=bu1%></td>
			<td><%=year1%></td>
			<td><%=res1%></td>
		</tr>
	</table>
                <br><br>
</div>
                <p id="a"></p>
                <c:set var="skill1" value="<%=skill1%>"/>
                <c:set var="skill2" value="<%=skill2%>"/>
                <c:set var="skill3" value="<%=skill3%>"/>
                <c:set var="skill4" value="<%=skill4%>"/>
                <c:set var="skill5" value="<%=skill5%>"/>

<!--                <script>
                    if(skill1.length<1)
                    {
                        document.getElementById("a").innerHTML="avecd";
                        document.getElementById("skill1").style.display=none;
                    }
                    else
                    {
                        document.getElementById("a").innerHTML="a";
                    }
                </script>-->
<div>
    <c:if test="${not empty skill1}">
	<h2>Acquired Training:</h2>
	<ul>
    </c:if>
                <c:if test="${not empty skill1}">
		<li><%=skill1%></li>
                </c:if>
                <c:if test="${not empty skill2}">
		<li><%=skill2%></li>
                </c:if>
                <c:if test="${not empty skill3}">
		<li><%=skill3%></li>
                </c:if>
                <c:if test="${not empty skill4}">
		<li><%=skill4%></li>
                </c:if>
                <c:if test="${not empty skill5}">
		<li><%=skill5%></li>
                </c:if>
                <br><br>
</div>
<!--<div>
	<h2>Area Of Interest</h2>
	<ul>
		<li>Web Development</li>
		<li>Software Coding</li>
		<li>Database Management</li>
	</ul>
</div>-->
    </body>
</html>
