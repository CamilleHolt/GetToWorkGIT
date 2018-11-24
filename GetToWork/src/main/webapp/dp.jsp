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
<p id="email" hidden><%=request.getParameter("email")%></p>
<body>
<div class="topnav">
  <a class="active" href="index.jsp?email=<%=request.getParameter("email")%>">GetToWork</a>
  <a href="#">Quick Start</a>
  <a href="dp.jsp?email=<%=request.getParameter("email")%>">Jobs</a>
  <a href="#contact?email=<%=request.getParameter("email")%>">Networking</a>
  <a href="tasklist.jsp?email=<%=request.getParameter("email")%>">Tasks</a>
  <a href="./ResumeCharts.jsp?email=<%=request.getParameter("email")%>">Resume/Job Description</a>
</div>
   

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
     
      <button id="myBtn" draggable="true" id="drag1" ondragstart="drag(event)" class="button">Pending Job</button>

      <!-- The Modal -->
      <div id="myModal" class="modal">

        <!-- Modal content -->
        <div class="modal-content">
          <span class="close">&times;</span>
          <p>Get Yo' Money Man!</p>
          <div class="container">
        <form >
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
    
    <button id="calButton" class="button">Add to Calendar</button>

<div id="calModal" class="modal">
<div class="modal-content" id="cal">
  <span class="close">&times;</span>
    <script src="../ouical.js"></script>
    <link rel="stylesheet" href="../main.css">
    <link rel="stylesheet" href="reset.css">
    <link rel="stylesheet" href="ouical_generator.css">
    <title>OuiCal - Calendar Embed Code Generator</title>

     <script type="text/javascript">
//Client ID and API key from the Developer Console
  var CLIENT_ID = '838423436336-8ldgmn1cjfh1a3aumkovginh1o4rrnh5.apps.googleusercontent.com'
  var API_KEY = 'AIzaSyALN1GM84vYnZuX0_5AkxLVvXENs5ucjvs';

  // Array of API discovery doc URLs for APIs used by the quickstart
  var DISCOVERY_DOCS = ["https://www.googleapis.com/discovery/v1/apis/calendar/v3/rest"];

  // Authorization scopes required by the API; multiple scopes can be
  // included, separated by spaces.
  var SCOPES = "https://www.googleapis.com/auth/calendar.readonly";

  var authorizeButton = document.getElementById('authorize_button');
  var signoutButton = document.getElementById('signout_button');

  /**
   *  On load, called to load the auth2 library and API client library.
   */
  function handleClientLoad() {
    gapi.load('client:auth2', initClient);
  }

  /**
   *  Initializes the API client library and sets up sign-in state
   *  listeners.
   */
  function initClient() {
    gapi.client.init({
      apiKey: API_KEY,
      clientId: CLIENT_ID,
      discoveryDocs: DISCOVERY_DOCS,
      scope: SCOPES
    }).then(function () {
      // Listen for sign-in state changes.
      gapi.auth2.getAuthInstance().isSignedIn.listen(updateSigninStatus);

      // Handle the initial sign-in state.
      updateSigninStatus(gapi.auth2.getAuthInstance().isSignedIn.get());
      authorizeButton.onclick = handleAuthClick;
      signoutButton.onclick = handleSignoutClick;
    }, function(error) {
      appendPre(JSON.stringify(error, null, 2));
    });
  }

  /**
   *  Called when the signed in status changes, to update the UI
   *  appropriately. After a sign-in, the API is called.
   */
  function updateSigninStatus(isSignedIn) {
    if (isSignedIn) {
      authorizeButton.style.display = 'none';
      signoutButton.style.display = 'block';
      //listUpcomingEvents();
     // eventCreate1();
    } else {
      authorizeButton.style.display = 'block';
      signoutButton.style.display = 'none';
    }
  }

  /**
   *  Sign in the user upon button click.
   */
  function handleAuthClick(event) {
    gapi.auth2.getAuthInstance().signIn();
  }

  /**
   *  Sign out the user upon button click.
   */
  function handleSignoutClick(event) {
    gapi.auth2.getAuthInstance().signOut();
  }

  /**
   * Append a pre element to the body containing the given message
   * as its text node. Used to display the results of the API call.
   *
   * @param {string} message Text to be placed in pre element.
   */
  function appendPre(message) {
    var pre = document.getElementById('content');
    var textContent = document.createTextNode(message + '\n');
    pre.appendChild(textContent);
  }
  </script>

    <header>
      <h1>Add To Calendar Generator</h1>
    </header>

    <div id="wrapper">
      <h2>Enter your event details</h2>

      <form id="calendar-generator">
        <label for="event-title">Title:</label>
        <input type="text" name="event-title" id="event-title">

        <label for="start-time">Start Time:</label>
        <input type="datetime-local" name="start-time" id="start-time">

        <label for="end-time">End Time:</label>
        <input type="datetime-local" name="end-time" id="end-time">

        <label for="event-address">Address:</label>
        <input type="text" name="event-address" id="event-address">

        <label for="event-description"></label>
        <textarea name="textarea" rows="10" cols="50" placeholder="Description" id="event-description"></textarea>

        <label for="event-id" hidden></label>
        <input type="text" name="event-id" id="event-id" hidden>

        <label for="event-class" hidden></label>
        <input type="text" name="event-class" id="event-class" hidden>

        
  <button id="authorize_button" style="display: none;">Generate Calendar Auth</button>
  <button id="signout_button" style="display: none;">Sign Out</button>
  <input type="submit" value="Generate Calendar" />
      </form>

      <div id="live-example"></div>
      <div id="html-result" hidden></div>
    </div>
    
    <script src="ouical_generator.js"></script>

</div>
</div>
</center>
    <script>
    
    //var jobs = firebase what are all the users by their email job ids
    //var application = [123]
		function allowDrop(ev) {
		    ev.preventDefault();
		}

		function drag(ev) {
		    ev.dataTransfer.setData("text", ev.target.id);
		    //document.getElementById("event-title").value;
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
    	document.getElementById("drag1").innerHTML = "324567";
        modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
    
    //The modal begins
    // Get the modal
    var modalCal = document.getElementById('calModal');

    // Get the button that opens the modal
    var btnCal = document.getElementById("calButton");

    // Get the <span> element that closes the modal
    var spanCal = document.getElementsByClassName("close")[0];

    // When the user clicks the button, open the modal
    btnCal.onclick = function() {
    	modalCal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    spanCal.onclick = function() {
    	modalCal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modalCal) {
        	modalCal.style.display = "none";
        }
    }

    </script>
</body>
</html>
