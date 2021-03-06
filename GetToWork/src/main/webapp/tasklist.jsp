<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<title>Contact List</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


<script  src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="   crossorigin="anonymous"></script>
<script src="bootstable.min.js"></script>

<style>
		.topnav {
	overflow: hidden;
	background-color: #333;
}
#changeFont {
	font-size: 18px;
}
#changeFont2 {
	font-size: 50px;
	color: black;
}
#picture {
	color: green;
}
body {
	text-align: center;
}
table {
	background-color: lightgray;
}
.topnav a {
	float: left;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.topnav a.active {
	background-color: #4CAF50;
	color: white;
}

		</style>
</head>



<body>

  <div class="topnav">
<a class="active" href="index.jsp?email=<%=request.getParameter("email")%>">GetToWork</a>
  <a href="#">Quick Start</a>
  <a href="dp.jsp?email=<%=request.getParameter("email")%>">Jobs</a>
  <a href="#contact?email=<%=request.getParameter("email")%>">Networking</a>
  <a href="tasklist.jsp?email=<%=request.getParameter("email")%>">Tasks</a>
  <a href="./ResumeCharts.jsp?email=<%=request.getParameter("email")%>">Resume/Job Description</a>

</div>

<div style="width:70%; margin: auto;">
	<div id="picture">
		<h1 id="changeFont2">CONTACT LIST</h1>
		<h2 id="changeFont">Stay In Touch with Recruiters</h2>
</div>
<table class="table" id="makeEditable">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email <span style="float:right"><button id="but_add">Add New Row</button></span></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Default</td>
        <td>Defaultson</td>
        <td>def@somemail.com</td>
      </tr>

    </tbody>
  </table>
</div>

<script>
 $('#makeEditable').SetEditable({ $addButton: $('#but_add')});
</script>
</body>
</html>