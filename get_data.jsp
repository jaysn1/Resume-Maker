<%-- 
    Document   : get_data
    Created on : 5 Apr, 2018, 12:36:56 AM
    Author     : ADMIN
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <form action="main.jsp" method="post" id="qwe">
        <h1>Enter your details:</h1>
        <fieldset>
    <legend>Personal details:</legend>
        Full Name:<input type="text" name="name" required><br><br>
        Contact No.:<input type="number" name="number" required><br><br>
        Email id:<input type="text" name="id" required><br><br>
        Date of birth:
        <select id="month" name="month" required/> 
    <option value="" selected disabled>--Select--</option>
        <option>January</option>       
    <option>February</option>       
    <option>March</option>       
    <option>April</option>       
    <option>May</option>       
    <option>June</option>       
    <option>July</option>       
    <option>August</option>       
    <option>September</option>       
    <option>October</option>       
    <option>November</option>       
    <option>December</option>       
  </select>  
  <select id="day" name="day" required/> 
  <option value="" selected disabled>--Select--</option>
    <option>1</option>       
    <option>2</option>       
    <option>3</option>       
    <option>4</option>       
    <option>5</option>       
    <option>6</option>       
    <option>7</option>       
    <option>8</option>       
    <option>9</option>       
    <option>10</option>       
    <option>11</option>       
    <option>12</option>       
    <option>13</option>       
    <option>14</option>       
    <option>15</option>       
    <option>16</option>       
    <option>17</option>       
    <option>18</option>       
    <option>19</option>       
    <option>20</option>       
    <option>21</option>       
    <option>22</option>       
    <option>23</option>       
    <option>24</option>       
    <option>25</option>       
    <option>26</option>       
    <option>27</option>       
    <option>28</option>       
    <option>29</option>       
    <option>30</option>       
    <option>31</option>       
  </select> 
        <select id="year" name="year" onfocusout="dob()" required/> 
  <script>  
      var start = 1950;
    var end = new Date().getFullYear();
    var options = "";
    for(var year = end ; year >=start; year--){
    options += "<option>"+ year +"</option>";
    }
    document.getElementById("year").innerHTML = options;      
</script>

    </select> <br><br>
        </fieldset>
        <br><br>
        <script>
            function dob(){
                var d1 = document.getElementById("year");
                var d2 = document.getElementById("year1");
                var d3 = document.getElementById("year2");
                
                 d2.value=+d1.value + +16;
                 d3.value=+d1.value + +18;
                 
            }
            function check()
            {
//                document.getElementById("a").innerHTML=document.getElementById("course").value;
                if(document.getElementById("course").value.length>0)
                {
                    document.getElementById("res3").required=true;
                    document.getElementById("bu3").required=true;
                    document.getElementById("year3").required=true;
                }
                else if((document.getElementById("course").value.length)<1)
                {
                    document.getElementById("res3").removeAttribute("required");
                    document.getElementById("bu3").removeAttribute("required");
                    document.getElementById("year3").removeAttribute("required");
                }
                if(document.getElementById("prog1_name").value.length>0)
                {
                    document.getElementById("prog1_res").required=true;
                    document.getElementById("prog1_uni").required=true;
                    document.getElementById("prog1_year").required=true;
                }
                else if((document.getElementById("prog1_name").value.length)<1)
                {
                    document.getElementById("prog1_res").removeAttribute("required");
                    document.getElementById("prog1_uni").removeAttribute("required");
                    document.getElementById("prog1_year").removeAttribute("required");
                }
                if(document.getElementById("prog2_name").value.length>0)
                {
                    document.getElementById("prog2_res").required=true;
                    document.getElementById("prog2_uni").required=true;
                    document.getElementById("prog2_year").required=true;
                }
                else if((document.getElementById("prog2_name").value.length)<1)
                {
                    document.getElementById("prog2_res").removeAttribute("required");
                    document.getElementById("prog2_uni").removeAttribute("required");
                    document.getElementById("prog2_year").removeAttribute("required");
                }
                if(document.getElementById("prog3_name").value.length>0)
                {
                    document.getElementById("prog3_res").required=true;
                    document.getElementById("prog3_uni").required=true;
                    document.getElementById("prog3_year").required=true;
                }
                else if((document.getElementById("prog3_name").value.length)<1)
                {
                    document.getElementById("prog3_res").removeAttribute("required");
                    document.getElementById("prog3_uni").removeAttribute("required");
                    document.getElementById("prog3_year").removeAttribute("required");
                }
            }
        </script>
        
        <fieldset>
            <legend>Career Objective:</legend>
            Enter your career objective:<br>
            <textarea rows="3" cols="100" name="career" id="career" required ></textarea><br><br>
        </fieldset>
        <br><br>
        <fieldset>
            <legend >Educational Details:</legend>
            Class 10 Result:<input type="text" name="res1" size="4" required><br><br>
            Class 10 Passing Year:<input type="text" name="year1" id="year1" size="4" required><br><br>
            Class 10 Board Name:<input type="text" name="bu1" required><br><br>
            <hr>
            Class 12 Result:<input type="text" name="res2" size="4" required><br><br>
            Class 12 Passing Year:<input type="text" name="year2" id="year2"size="4" required><br><br>
            Class 12 Board Name:<input type="text" name="bu2" required><br><br>
            <hr>
            Undergraduate Program:<input type="text" name="course" id="course" onfocusout="check()" ><br><br>
            Undergraduate Result:<input type="text" name="res3" id="res3" size="4"><br><br>
            Undergraduate Passing Year:<input type="text" name="year3" id="year3" size="4"><br><br>
            Undergraduate University Name:<input type="text" name="bu3" id="bu3"><br><br>
            <hr>
            Masters Program:<input type="text" name="prog1_name" id="prog1_name" onfocusout="check()" ><br><br>
            Masters Result:<input type="text" name="prog1_res" id="prog1_res" size="4"><br><br>
            Masters Passing Year:<input type="text" name="prog1_year" id="prog1_year" size="4"><br><br>
            Masters University Name:<input type="text" name="prog1_uni" id="prog1_uni"><br><br>
            <hr>
            Program :<input type="text" name="prog2_name" id="prog2_name" onfocusout="check()" ><br><br>
            Result:<input type="text" name="prog2_res" id="prog2_res" size="4"><br><br>
            Passing Year:<input type="text" name="prog2_year" id="prog2_year" size="4"><br><br>
            University Name:<input type="text" name="prog2_uni" id="prog2_uni"><br><br>
            <hr>
            Program:<input type="text" name="prog3_name" id="prog3_name" onfocusout="check()" ><br><br>
            Result:<input type="text" name="prog3_res" id="prog3_res" size="4"><br><br>
            Passing Year:<input type="text" name="prog3_year" id="prog3_year" size="4"><br><br>
            University Name:<input type="text" name="prog3_uni" id="prog3_uni"><br><br>
            
           
            
            
<!--            <p id="a"></p>
            <a id="add1" href="javascript:addnew1()" >+Add New</a>-->
            
        </fieldset>
        <br><br>
        <fieldset>
            <legend>Academic Skills:</legend>
            Enter your Skills:<br><br>
            <input type="text" name="skill1"><br><br>
            <input type="text" name="skill2"><br><br>
            <input type="text" name="skill3"><br><br>
            <input type="text" name="skill4"><br><br>
            <input type="text" name="skill5"><br><br>
        </fieldset>
        
        <br><br>
        <fieldset>
            <legend>Experience:</legend>
            Do you have any experience: &nbsp; Yes<input type="radio" name="exp" value="yes" onclick="nexp()">
            &nbsp; No<input type="radio" name="exp" value="no" onclick="noexp()"><br><br>
            <span id="myForm"></span>
            <div id="y">
                <hr>
            Company Name:<input type="text" name="c1_name" id="c1_name"><br><br>
            Number of Years Worked:<input type="text" name="c1_year" id="c1_year"><br><br>
            Designation:<input type="text" name="c1_post" id="c1_post"><br><br>
            Company Contact Number:<input type="text" name="c1_num" id="c1_num"><br><br>
            <hr>
            Company Name:<input type="text" name="c2_name" id="c2_name"><br><br>
            Number of Years Worked:<input type="text" name="c2_year" id="c2_year"><br><br>
            Designation:<input type="text" name="c2_post" id="c2_post"><br><br>
            Company Contact Number:<input type="text" name="c2_num" id="c2_num"><br><br>
            <hr>
            Company Name:<input type="text" name="c3_name" id="c3_name"><br><br>
            Number of Years Worked:<input type="text" name="c3_year" id="c3_year"><br><br>
            Designation:<input type="text" name="c3_post" id="c3_post"><br><br>
            Company Contact Number:<input type="text" name="c3_num" id="c3_num"><br><br>
        </div>
            <script>
//                 var x = document.getElementById("ch");
//                 var x = document.getElementById("company_name1");
//                 var y = document.getElementById("company_year1");
//                 var z = document.getElementById("company_number1");
//                 x.style.display = "none";
//                 y.style.display = "none";
//                 z.style.display = "none";
                function nexp()
                {
                   
                 var e = document.getElementById("y");
//                 var x = document.getElementById("company_name1");
//                 var y = document.getElementById("company_year1");
//                 var z = document.getElementById("company_number1");
//                 var w = document.getElementById("company_post");
//                       w.style.display = "inline";
//                       x.style.display = "inline";
//                       y.style.display = "inline";
//                       z.style.display = "inline";
                       e.style.display = "inline";
                    
               }
//                    if (x.style.display === "none") {
////                         var r = document.createElement('span');
////var y = document.createElement("INPUT");
////y.setAttribute("type", "text");
////y.setAttribute("placeholder", "Name");
////r.appendChild(y);
////document.getElementById("myForm").appendChild(r);
                       
//                        
//                    } else {
//                        document.getElementById('ch').checked = false;
//                        x.style.display = "none";
//                        y.style.display = "none";
//                        z.style.display = "none";
//                    
//                }
                function noexp()
                {
                        var e = document.getElementById("y");
//                        var x = document.getElementById("company_name1");
//                        var y = document.getElementById("company_year1");
//                        var z = document.getElementById("company_number1");
//                        var w = document.getElementById("company_post");
//                        w.style.display = "none";
//                        x.style.display = "none";
//                        y.style.display = "none";
//                        z.style.display = "none";
                        e.style.display = "none";
                }
//                    function ask()
//                    {
//                        var ques = document.createElement("span");
//                        ques.textContent = "How many more programs do you want?: ";
//                        var ans = document.createElement("INPUT");
//                        ans.setAttribute("type", "number");
//                        ans.setAttribute("id","ans3");
                         <%--<c:set var="ans" value="${ans}"/>--%>
//                        ans.setAttribute("onfocusout","addnew()");
//                        document.getElementById("a").appendChild(ques);
//                    document.getElementById("a").appendChild(ans);
//
//                    }
                function addnew1(){
                    <%--<c:forEach var="i" begin="0" end="q">--%>
                    var x = document.createElement("HR");
                    var q = document.getElementById("add1");
                    q.style.display = "none";
                    
                    var program = document.createElement("span");
                    program.textContent = "Program 1 Name: ";
                    var y = document.createElement("INPUT");
                    y.setAttribute("type", "text");
                    y.setAttribute("id", "prog1_name");
                    var br1=document.createElement("BR");
                    var br2=document.createElement("BR");
                    
                    var result = document.createElement("span");
                    result.textContent = "Program 1 Result : ";
                    var z = document.createElement("INPUT");
                    z.setAttribute("type", "text");
                    z.setAttribute("id", "prog1_res");
                    var br3=document.createElement("BR");
                    var br4=document.createElement("BR");
                    
                    var year= document.createElement("span");
                    year.textContent = "Program 1 Passing Year: ";
                    var a = document.createElement("INPUT");
                    a.setAttribute("type", "text");
                    a.setAttribute("id", "prog1_year");
                    var br5=document.createElement("BR");
                    var br6=document.createElement("BR");
                    
                    var name = document.createElement("span");
                    name.textContent = "Program 1 University Name: ";
                    var b = document.createElement("INPUT");
                    b.setAttribute("type", "text");
                    b.setAttribute("id", "prog1_uni");
                    var br7=document.createElement("BR");
                    var br8=document.createElement("BR");
                    
                    var add = document.createElement("a");
                    add.textContent = "+Add New";
                    add.setAttribute("href","javascript:addnew2()");
                    add.setAttribute("id","add2");
                    var br9=document.createElement("BR");
                    var br10=document.createElement("BR");

                    document.getElementById("a").appendChild(x);
                    document.getElementById("a").appendChild(program);
                    document.getElementById("a").appendChild(y);
                    document.getElementById("a").appendChild(br1);
                    document.getElementById("a").appendChild(br2);
                    document.getElementById("a").appendChild(result);
                    document.getElementById("a").appendChild(z);
                    document.getElementById("a").appendChild(br3);
                    document.getElementById("a").appendChild(br4);
                    document.getElementById("a").appendChild(year);
                    document.getElementById("a").appendChild(a);
                    document.getElementById("a").appendChild(br5);
                    document.getElementById("a").appendChild(br6);
                    document.getElementById("a").appendChild(name);
                    document.getElementById("a").appendChild(b);
                    document.getElementById("a").appendChild(br7);
                    document.getElementById("a").appendChild(br8);
                    document.getElementById("a").appendChild(add);
                    document.getElementById("a").appendChild(br9);
                    document.getElementById("a").appendChild(br10);
                                    <%--</c:forEach>--%>

                }
                function addnew2(){
                    <%--<c:forEach var="i" begin="0" end="q">--%>
                    var x = document.createElement("HR");
                    var q = document.getElementById("add2");
                    q.style.display = "none";
                    var program = document.createElement("span");
                    program.textContent = "Program 2 Name: ";
                    var y = document.createElement("INPUT");
                    y.setAttribute("type", "text");
                    y.setAttribute("id", "prog2_name");
                    var br1=document.createElement("BR");
                    var br2=document.createElement("BR");
                    
                    var result = document.createElement("span");
                    result.textContent = "Program 2 Result: ";
                    var z = document.createElement("INPUT");
                    z.setAttribute("type", "text");
                    z.setAttribute("id", "prog2_res");
                    var br3=document.createElement("BR");
                    var br4=document.createElement("BR");
                    
                    var year= document.createElement("span");
                    year.textContent = "Program 2 Passing Year: ";
                    var a = document.createElement("INPUT");
                    a.setAttribute("type", "text");
                    a.setAttribute("id", "prog2_year");
                    var br5=document.createElement("BR");
                    var br6=document.createElement("BR");
                    
                    var name = document.createElement("span");
                    name.textContent = "Program 2 University Name: ";
                    var b = document.createElement("INPUT");
                    b.setAttribute("type", "text");
                    b.setAttribute("id", "prog2_uni");
                    var br7=document.createElement("BR");
                    var br8=document.createElement("BR");
                    
                    var add = document.createElement("a");
                    add.textContent = "+Add New";
                    add.setAttribute("href","javascript:addnew3()");
                    add.setAttribute("id","add3");
                    var br9=document.createElement("BR");
                    var br10=document.createElement("BR");
                    
                    document.getElementById("a").appendChild(x);
                    document.getElementById("a").appendChild(program);
                    document.getElementById("a").appendChild(y);
                    document.getElementById("a").appendChild(br1);
                    document.getElementById("a").appendChild(br2);
                    document.getElementById("a").appendChild(result);
                    document.getElementById("a").appendChild(z);
                    document.getElementById("a").appendChild(br3);
                    document.getElementById("a").appendChild(br4);
                    document.getElementById("a").appendChild(year);
                    document.getElementById("a").appendChild(a);
                    document.getElementById("a").appendChild(br5);
                    document.getElementById("a").appendChild(br6);
                    document.getElementById("a").appendChild(name);
                    document.getElementById("a").appendChild(b);
                    document.getElementById("a").appendChild(br7);
                    document.getElementById("a").appendChild(br8);
                    document.getElementById("a").appendChild(add);
                    document.getElementById("a").appendChild(br9);
                    document.getElementById("a").appendChild(br10);
                                    <%--</c:forEach>--%>

                }
                function addnew3(){
                    <%--<c:forEach var="i" begin="0" end="q">--%>
                    var x = document.createElement("HR");
                    var q = document.getElementById("add3");
                    q.style.display = "none";
                    var program = document.createElement("span");
                    program.textContent = "Program 3 Name: ";
                    var y = document.createElement("INPUT");
                    y.setAttribute("type", "text");
                    y.setAttribute("id", "prog3_name");
                    var br1=document.createElement("BR");
                    var br2=document.createElement("BR");
                    
                    var result = document.createElement("span");
                    result.textContent = "Program 3 Result: ";
                    var z = document.createElement("INPUT");
                    z.setAttribute("type", "text");
                    z.setAttribute("id", "prog3_res");
                    var br3=document.createElement("BR");
                    var br4=document.createElement("BR");
                    
                    var year= document.createElement("span");
                    year.textContent = "Program 3 Passing Year: ";
                    var a = document.createElement("INPUT");
                    a.setAttribute("type", "text");
                    a.setAttribute("id", "prog3_year");
                    var br5=document.createElement("BR");
                    var br6=document.createElement("BR");
                    
                    var name = document.createElement("span");
                    name.textContent = "Program 3 University Name: ";
                    var b = document.createElement("INPUT");
                    b.setAttribute("type", "text");
                    b.setAttribute("id", "prog3_uni");
                    var br7=document.createElement("BR");
                    var br8=document.createElement("BR");
                    
//                    var add = document.createElement("a");
//                    add.textContent = "+Add New";
//                    add.setAttribute("href","javascript:addnew4()");
//                    var br9=document.createElement("BR");
//                    var br10=document.createElement("BR");
                    
                    document.getElementById("a").appendChild(x);
                    document.getElementById("a").appendChild(program);
                    document.getElementById("a").appendChild(y);
                    document.getElementById("a").appendChild(br1);
                    document.getElementById("a").appendChild(br2);
                    document.getElementById("a").appendChild(result);
                    document.getElementById("a").appendChild(z);
                    document.getElementById("a").appendChild(br3);
                    document.getElementById("a").appendChild(br4);
                    document.getElementById("a").appendChild(year);
                    document.getElementById("a").appendChild(a);
                    document.getElementById("a").appendChild(br5);
                    document.getElementById("a").appendChild(br6);
                    document.getElementById("a").appendChild(name);
                    document.getElementById("a").appendChild(b);
                    document.getElementById("a").appendChild(br7);
                    document.getElementById("a").appendChild(br8);
//                    document.getElementById("a").appendChild(add);
//                    document.getElementById("a").appendChild(br9);
//                    document.getElementById("a").appendChild(br10);
                                    <%--</c:forEach>--%>

                }
            
                
                
            </script>
        </fieldset>
        <br><br><center><input type="submit" name="submit" value="Make my Resume" ></center>
        </form>
    
    </body>
</html>
