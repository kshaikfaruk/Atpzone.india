<%@page import="java.util.Random"%>
<%@page import="java.io.BufferedReader"%>
<%@page import ="java.io.IOException" %>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLConnection"%> 
<%@page import=" java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!--
Template Name: AtpZone.com
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<html>
<head>
<title>AtpZone.com</title>
<link rel="icon" href="./icon.jpg">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="./layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="fl_left">
      <ul class="nospace inline pushright">
        <li><i class="fa fa-phone"></i> +918712388275</li>
        <li><i class="fa fa-envelope-o"></i> www.AtpZone.com</li>
      </ul>
    </div>
    <div class="fl_right">
      <ul class="nospace inline pushright">
        <li><i class="fa fa-user"></i><form action="LogoutServlet"><input type="submit" value="Logout"></form></li>
      </ul>
    </div>
    </div>
    <!-- ################################################################################################ -->
  </div>
  <div class="wrapper row1">
  <header id="header" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><a href="homepage1.html">AtpZone.com</a></h1>
    </div>
    </header>
</div>
<script>
function Submit(){
	var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
	var pword=document.login.password.value,
		uname=document.login.username.value;
		
		if (uname == "" )
	{
		document.form.username.focus();
		document.getElementById("errorBox").innerHTML = "enter the username";
		alert("Username cannot be Empty ");
		return false;
	 }else if(!emailRegex.test(uname)){
		document.form.username.focus();
		document.getElementById("errorBox").innerHTML = "enter the valid email";
		return false;
	 } 
	if(password == "")
	 {
		 document.form.password.focus();
		 document.getElementById("errorBox").innerHTML = "enter the password";
		 alert("Password cannot be Empty ");
		 return false;
	 }
	 
}
</script>
<fieldset>
<center>
<form action="Otp" method="post">
<input type="text" name="otp1" size="40" placeholder="enterOtp"><br>
<input type="submit" value="submit">
</form><%
String authkey = "130491ADE9VcIY7WyB5vst82d3";
//Multiple mobiles numbers separated by comma
Random rand = new Random();
int otp = rand.nextInt(900000) + 100000;
session.setAttribute("otp",otp);
//Sender ID,While using route4 sender id should be 6 characters long.
String senderId = "ABCDEF";
//Your message to send, Add URL encoding here.
String message = "Your OTP is "+otp;
//define route
String route="4";
//Prepare Url
%>
<h3><%=message %></h3>
</center>
</font>
</fieldset>
<h1><marquee behaviour="alternate" direction="left">AtpZone.com
</marquee></h1>
</body>
</html>

