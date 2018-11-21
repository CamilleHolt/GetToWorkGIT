<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
  <title>dashboard</title>
    <meta charset="utf-8" />
    <title>Job Tracker</title>
		<link rel= "stylesheet" href="dp.css">

		<style>
    body {font-family: Arial, Helvetica, sans-serif;}
    * {box-sizing: border-box;}

    input[type=text], select, textarea {
        width: 100%;
        padding: 12px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        margin-top: 6px;
        margin-bottom: 16px;
        resize: vertical;
    }

    input[type=submit] {
        background-color: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type=submit]:hover {
        background-color: #45a049;
    }

    .button {
    	background-color: white;
    	border-radius: 0px;
    	text-decoration: none;
    	padding: 10px 58px;
    	color: black;
    	margin-top: 0px;
    	display: inline-block;
    }


    .container {
        border-radius: 5px;
        background-color: #f2f2f2;
        padding: 20px;
    }
    /* The Modal (background) */
    .modal {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        padding-top: 100px; /* Location of the box */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    }

    /* Modal Content */
    .modal-content {
        background-color: #fefefe;
        margin: auto;
        padding: 20px;
        border: 1px solid #888;
        width: 80%;
    }

    /* The Close Button */
    .close {
        color: #aaaaaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close:hover,
    .close:focus {
        color: #000;
        text-decoration: none;
        cursor: pointer;
    }


    /*modal ends*/



		.topnav {
	overflow: hidden;
	background-color: #333;
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
				.box001 {
						float: left;
						width: 200px;
						height: 70px;
						margin: 11px;
						padding: 10px;
						border: 1px solid black;
            font-size: 30px;
            border-style: dashed;
            border-width: 1px;
            border-left-width: 1px;
            border-right-width: 1px;
            border-color: lightgray;
            color: lightgray;

				}



				.box002 {
						float: left;
						width: 200px;
						height: 60px;
						margin: 12px;
						padding: 10px;
						font-size: 20px;
						background-color: lightgreen;
						opacity: 0.6;
				}


		</style>
</head>

<body>
	<div class="topnav">
  <a class="active" href="dragNdrop.html">GetToWork</a>
  <a href="#">Quick Start</a>
  <a href="dp.html">Jobs</a>
  <a href="#contact">Networking</a>
  <a href="tasklist.html">Tasks</a>
  <a href="./ResumeCharts.jsp">Resume/Job Description</a>
</div>
   <%= request.getParameter("email")%>

    <p>Dashboard <text id="score001"></text></p>
		<center>
	
    <div class="box002" ondrop="drop001(event)">
        <text ondragstart="dragStart001(event)" ondragover="allowDrop001(event)" id="place001">Need To Apply</text>
    </div>

    <div class="box002" ondrop="drop002(event)">
        <text ondragstart="dragStart002(event)" ondragover="allowDrop002(event)" id="place002">Applied</text>
    </div>

    <div class="box002" ondrop="drop003(event)">
        <text ondragstart="dragStart003(event)" ondragover="allowDrop003(event)" id="place003">First Interview</text>
    </div>

    <div class="box002" ondrop="drop004(event)">
        <text ondragstart="drag(event)" ondragover="allowDrop004(event)" id="place004">Second Round Interviews</text>
    </div>

    <div class="box002" ondrop="drop(event)">
        <text ondragstart="dragStart005(event)" ondragover="allowDrop005(event)" id="place005">Offer</text>
    </div>

    <br /><br /><br /><br />

    <div class="box001" ondrop="drop(event)" ondragover="allowDrop(event)">
      <!--
			<img src="hey-blackchild.jpeg" draggable="true" ondragstart="drag(event)" id="drag1" width="100" height="31">
    -->
      <button id="myBtn" draggable="true" id="drag1" ondragstart="drag(event)" class="button">Pending Job</button>

      <!-- The Modal -->
      <div id="myModal" class="modal">

        <!-- Modal content -->
        <div class="modal-content">
          <span class="close">&times;</span>
          <p>Get Yo' Money Man!</p>
          <div class="container">
        <form action="/action_page.php">
          <label for="fname">Company Name</label>
          <input type="text" id="fname" name="company name" placeholder="Company Name is...">

          <label for="lname">Job Title</label>
          <input type="text" id="jTitle" name="jobtitle" placeholder="Job Title is...">

          <label for="location">Location</label>
          <input type="text" id="location" name="location" placeholder="Location...">

          <label for="salary">Salary</label>
          <select id="salary" name="salary">
            <option value="lower range">below 65,000</option>
            <option value="middle range">65,000 to 75,000</option>
            <option value="higher range">75,000 to 85,000</option>
            <option value="above range">Above 85,000</option>
          </select>

          <label for="jobDescript">Job Desciption</label>
          <textarea id="jobDescript" name="jobDescript" placeholder="Write something.." style="height:200px"></textarea>

          <input type="submit" value="Submit">
        </form>
      </div>
        </div>

      </div>

		</div>

    <div class="box001" ondrop="drop(event)" ondragover="allowDrop(event)">
    </div>

    <div class="box001" ondrop="drop(event)" ondragover="allowDrop(event)">
    </div>

    <div class="box001" ondrop="drop(event)" ondragover="allowDrop(event)">
    </div>

    <div class="box001" ondrop="drop(event)" ondragover="allowDrop(event)">

    </div><br /><br /><br />

	</div>



    <p id="message001"></p>
</center>
    <script>
    
    //var jobs = firebase what are all the users by their email job ids
    //var application = [123]
		function allowDrop(ev) {
		    ev.preventDefault();
		}

		function drag(ev) {
		    ev.dataTransfer.setData("text", ev.target.id);
		}

		function drop(ev) {
		    ev.preventDefault();
		    var data = ev.dataTransfer.getData("text");
		    ev.target.appendChild(document.getElementById(data));
		    
		}

    //The modal begins
    // Get the modal
    var modal = document.getElementById('myModal');

    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks the button, open the modal
    btn.onclick = function() {
        modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
        modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }

    </script>
</body>
</html>
