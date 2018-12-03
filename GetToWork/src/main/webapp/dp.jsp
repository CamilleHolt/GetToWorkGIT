<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js" type="text/javascript"></script>
<head>
  <title>dashboard</title>
    <meta charset="utf-8" http-equiv="Content-Type" content="text/html; charset=iso-8859-1"  />
    <title>Job Tracker</title>
		<link rel= "stylesheet" href="dp.css">


		<style>
    body {font-family: Arial, Helvetica, sans-serif;}
    * {box-sizing: border-box;}

    @media only screen and (min-width: 320px)  { body{ font-size: 12px; } }
    @media only screen and (min-width: 768px)  { body{ font-size: 14px; } }
    @media only screen and (min-width: 1024px) { body{ font-size: 16px; } }
    @media only screen and (min-width: 1900px) { body{ font-size: 18px; } }


    table {
        width:20%;
    }
    table, th, td {
        border: 1px solid white;
        border-collapse: collapse;
    }
    th, td {
        text-align: center;
    }
    table#t01 tr:nth-child(even) {
        background-color: #fff;
    }
    table#t01 tr:nth-child(odd) {
       background-color: #fff;
    }
    table#t01 th {
        background-color: lightgreen;
        color: white;
    }
    #righty{
      float: right;
    }


    input[type=text], select, textarea {
        width: 250px;
        padding: 0px;
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
        height: 90%;
        width: 30%;
        float: left;
        font-size: 12px;

    }
    /* The Modal (background) */
    .modal {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        padding-top: 80px; /* Location of the box */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 150%; /* Full height */
        overflow: scroll; /* Enable scroll if needed */
        background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    }

    /* Modal Content */
    .modal-content {
        background-color: #fefefe;

        padding: 20px;
        border: 1px solid #888;
        width: 80%;
        height: 60%;
        overflow: scroll;

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
            height:400px;
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
            overflow: scroll;

				}

        .box003 {
            float: left;
            width: 200px;
            height:70px;
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
            overflow: scroll;

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
        .scrollable {
          overflow: scroll;
          text-align: left;
          padding-left: 30px;
        }
        .hidden{
          display:none;
        }
        #scrollable {
          overflow: scroll;
        }
       #checkboxHeading {
         font-size: 18px;
         color: black;
         font-weight:lighter;
         padding-top: 10px;
       }
       #checkboxHeading2 {
         font-size: 18px;
         color: black;
         font-weight:lighter;
         padding-top: 10px;
       }
       #checkboxBody {
         font-size: 12px;
         color: lightgray;

         font-weight:lighter;
       }

       #checkboxBody2 {
         font-size: 12px;
         color: black;
         font-weight:lighter;
       }

       #checkboxBody3 {
         font-size: 12px;
         color: black;
         font-weight:lighter;
       }

       #checkboxBody4 {
         font-size: 12px;
         color: black;
         font-weight:lighter;
       }

       #checkboxBody5 {
         font-size: 12px;
         color: black;
         font-weight:lighter;
       }
       #savedHtml {
         font-size: 14px;
       }
       #floatLeft {
         float: left;
         text-align: left;
       }
       #changeHeadingfont {
         font-size: 12px;
         color: black;
       }

       #lightgray {
         color: lightgray;
       }
       #pipe {
         color: lightgreen;
       }
       #taskname {
         font-size: 12px;
         text-align: left;
         color: black;
       }
       #details {
         font-size: 12px;
         text-align: left;
         color: black;
       }
       #innerChecklist {
         overflow: hidden;
       }
       #changeButton {
         background-color: darkgray;
         padding: 6px 10px;

       }
       #checklistHeading {
         font-size: 40px;
         text-align: center;
         background-color: lightblue;
         color: white;
       }
       #fonted {
         color: black;
         font-size: 12px;
       }
       #calendar-generator {
         height: 50%;
         width: 50%;
         text-align: left;
       }
       #lefty {
         text-align: left;
         float: left;
       }
       #calendly {
         width: 550px;
       }
       #black {
         color: black;
       }
       #banner {
         padding-top: 0px;
         color: black;
         width: 36%;
       }
       #place001 {
         color: black;
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


		<center>
    <table>
      <tr>
        <td>
          <div class="box002">
            <text ondragstart="dragStart001(event)" ondragover="allowDrop001(event)" id="place001">Need To Apply</text>
          </div>
        </td>
        <td>
          <div class="box002">
            <text ondragstart="dragStart001(event)" ondragover="allowDrop001(event)" id="place001">Applied</text>
          </div>
        </td>
        <td>
          <div class="box002">
            <text ondragstart="dragStart001(event)" ondragover="allowDrop001(event)" id="place001">First Round</text>
          </div>
        </td>
        <td>
          <div class="box002">
            <text ondragstart="dragStart001(event)" ondragover="allowDrop001(event)" id="place001">Second Round</text>
          </div>
        </td>
        <td>
          <div class="box002">
            <text ondragstart="dragStart001(event)" ondragover="allowDrop001(event)" id="place001">Offer</text>
          </div>
        </td>
      </tr>

      <tr>
        <td>
          <div class="box001" height="200px" ondrop="drop(event)" ondragover="allowDrop(event)">
          </div>
        </td>
        <td>
          <div class="box001" ondrop="drop(event)" ondragover="allowDrop(event)">
          </div>
        </td>
        <td>
          <div class="box001" ondrop="drop(event)" ondragover="allowDrop(event)">
          </div>
        </td>
        <td>
          <div class="box001" ondrop="drop(event)" ondragover="allowDrop(event)">
          </div>
        </td>
        <td>
          <div class="box001" ondrop="drop(event)" ondragover="allowDrop(event)">
          </div>
        </td>
      </tr>


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
      <h2 id="banner">Enter Event Details</h2>
      <div id="calendly">
      <form id="calendar-generator">
        <label id="lefty" for="event-title">Title:</label>
        <input type="text" name="event-title" id="event-title">
        <br />
        <label id="lefty" for="start-time">Start Time:</label>
        <input type="datetime-local" name="start-time" id="start-time">
        <br />
        <br />
        <label id="lefty" or="end-time">End Time:</label>
        <input type="datetime-local" name="end-time" id="end-time">
        <br />
        <br />
        <label id="lefty" for="event-address">Address:</label>
        <input type="text" name="event-address" id="event-address">
        <br />
        <label id="lefty" for="event-description">Description:</label><br />
        <textarea name="textarea" rows="10" cols="50" placeholder="Description" id="event-description"></textarea>

        <label id="lefty" for="event-id" hidden></label>
        <input type="text" name="event-id" id="event-id" hidden>

        <label id="lefty" for="event-class" hidden></label>
        <input type="text" name="event-class" id="event-class" hidden>
      </div>

  <button id="authorize_button" style="display: none;">Generate Calendar Auth</button>
  <button id="signout_button" style="display: none;">Sign Out</button>
  <input type="submit" value="Generate Calendar" />
      </form>

      <div id="live-example"></div>
      <div id="html-result" hidden></div>
    </div>

    <script src="ouical_generator.js"></script>

</div>

</table>

    <br /><br /><br /><br />

    <div id="scrollable" class="box003" ondrop="drop(event)" ondragover="allowDrop(event)">


      <button id="myBtn" draggable="true" id="drag1" ondragstart="drag(event)" class="button"  onclick="jobButton(this.id)">Pending Job0</button>

      <button id="myBtn2" draggable="true" id="drag1" ondragstart="drag(event)" class="button" onclick="jobButton(this.id)" >Pending Job1</button>

      <button id="myBtn3" draggable="true" id="drag1" ondragstart="drag(event)" class="button" onclick="jobButton(this.id)" >Pending Job1</button>

      <button id="myBtn4" draggable="true" id="drag1" ondragstart="drag(event)" class="button" onclick="jobButton(this.id)" >Pending Job1</button>

      <button id="myBtn5" draggable="true" id="drag1" ondragstart="drag(event)" class="button" onclick="jobButton(this.id)" >Pending Job1</button>
      <button id="myBtn6" draggable="true" id="drag1" ondragstart="drag(event)" class="button" onclick="jobButton(this.id)" >Pending Job1</button>
      <button id="myBtn7" draggable="true" id="drag1" ondragstart="drag(event)" class="button" onclick="jobButton(this.id)" >Pending Job1</button>
      <button id="myBtn8" draggable="true" id="drag1" ondragstart="drag(event)" class="button" onclick="jobButton(this.id)" >Pending Job1</button>
      <button id="myBtn9" draggable="true" id="drag1" ondragstart="drag(event)" class="button" onclick="jobButton(this.id)" >Pending Job1</button>
      <button id="myBtn10" draggable="true" id="drag1" ondragstart="drag(event)" class="button" onclick="jobButton(this.id)" >Pending Job1</button>
</div>
      <!-- The Modal -->
      <div id="myModal" class="modal">

        <!-- Modal content -->
        <div class="modal-content">
          <span class="close">&times;</span>
          <p id="checklistHeading">Action List</p>

          <div class="container split1 left">
          <form>
          <label id="fonted" for="fname">Company Name</label>
          <input type="text" id="fname" name="company name" placeholder="Company Name is...">

          <label id="fonted" for="lname">Job Title</label>
          <input type="text" id="jTitle" name="jobtitle" placeholder="Job Title is...">

          <label id="fonted" for="location">Location</label>
          <input type="text" id="location" name="location" placeholder="Location...">

          <label id="fonted" for="joburl">Job Posting URL</label>
          <input type="text" id="joburl" name="location" placeholder="Job Posting URL...">

          <label id="fonted" for="salary">Salary</label>
          <select id="salary" name="salary">
            <option value="lower range">below 65,000</option>
            <option value="middle range">65,000 to 75,000</option>
            <option value="higher range">75,000 to 85,000</option>
            <option value="above range">Above 85,000</option>
          </select>

          <label id="fonted" for="jobDescript">Job Desciption</label>
          <textarea id="jobDescript" name="jobDescript" placeholder="Write something.." style="height:100px"></textarea>

          <input type="button" value="Save" onclick="getFormValues()">
        </form>
      </div>

    <div class="split2 right">

          <img id = "checkboxHeading" onclick = "openList1('checkboxBody');"src="arrow-updown.png" alt="arrow" width="25" height="25"/> <a onclick = "openList1('checkboxBody');">NEED TO APPLY</a> <a class="task">+ add task </a> <a id="pipe">|</a> <a class="notes"> + add notes</a>
          <br />

            <ol id="checkboxBody" class="hidden">
              <li><a id="lightgray" onclick = "openList1('innerChecklist');">Apply to Job<input type="checkbox" name="colors" value="blue" checked="yes" /><br /></a></li>
              <div id="innerChecklist" class="hidden">
                <form>
                  <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                  <label for="start-time">Start Time:</label>
                  <input type="datetime-local" name="start-time" id="start-time">
                  <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                  <input type="submit" value="Save" id="changeButton"><br />
                </form>
              </div>
              <li><a id="lightgray" onclick = "openList1('innerChecklist2');">Customize resume and cover letter<input type="checkbox" name="colors" value="blue" checked="yes" /><br /></a></li>
              <div id="innerChecklist2" class="hidden">
                <form>
                  <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                  <label for="start-time">Start Time:</label>
                  <input type="datetime-local" name="start-time" id="start-time">
                  <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                  <input type="submit" value="Save" id="changeButton"><br />
                </form>
              </div>
              <li><a id="lightgray" onclick = "openList1('innerChecklist3');">Research company<input type="checkbox" name="colors" value="blue" checked="yes" /><br /></a></li>
              <div id="innerChecklist3" class="hidden">
                <form>
                  <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                  <label for="start-time">Start Time:</label>
                  <input type="datetime-local" name="start-time" id="start-time">
                  <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                  <input type="submit" value="Save" id="changeButton"><br />
                </form>
              </div>
            </ol>



        <img id = "checkboxHeading2" onclick = "openList1('checkboxBody2');"src="arrow-updown.png" alt="arrow" width="25" height="25"/><a onclick = "openList1('checkboxBody2');"> APPLIED</a> <a class="task">+ add task </a> <a id="pipe">|</a> <a class="notes"> + add notes</a>
          <br />
            <ol id="checkboxBody2" class="hidden">
              <li><a id="black" onclick = "openList1('innerChecklist4');">Leverage your network<input type="checkbox" name="colors" value="blue" /><br /></a></li>
              <div id="innerChecklist4" class="hidden">
                <form>
                  <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                  <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                  <input type="submit" value="Save" id="changeButton"><br />
                </form>
              </div>
              <li><a id="black" onclick = "openList1('innerChecklist5');">Follow-up with recruiter<input type="checkbox" name="colors" value="blue" /><br /></a></li>
              <div id="innerChecklist5" class="hidden">
                <form>
                  <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                  <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                  <input type="submit" value="Save" id="changeButton"><br />
                </form>
              </div>
            </ol>



          <img id = "checkboxHeading3" onclick = "openList1('checkboxBody3');"src="arrow-updown.png" alt="arrow" width="25" height="25"/><a onclick = "openList1('checkboxBody3');"> FIRST ROUND INTERVIEWS</a> <a class="task">+ add task </a> <a id="pipe">|</a> <a class="notes"> + add notes</a>
          <br />
            <ol id="checkboxBody3" class="hidden">
              <li><a id="black" onclick = "openList1('innerChecklist6');">Prep for Interview<input type="checkbox" name="colors" value="blue"/><br /></a></li>
              <div id="innerChecklist6" class="hidden">
                <form>
                  <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                  <label for="start-time">Start Time:</label>
                  <input type="datetime-local" name="start-time" id="start-time">
                  <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                  <input type="submit" value="Save" id="changeButton"><br />
                </form>
              </div>
              <li><a id="black" onclick = "openList1('innerChecklist7');">Interview<input type="checkbox" name="colors" value="blue" /><br /></a></li>
              <div id="innerChecklist7" class="hidden">
                <form>
                  <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                  <label for="start-time">Start Time:</label>
                  <input type="datetime-local" name="start-time" id="start-time">
                  <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                  <input type="submit" value="Save" id="changeButton"><br />
                </form>
              </div>
              <li><a id="black" onclick = "openList1('innerChecklist8');">Send thank-you letters<input type="checkbox" name="colors" value="blue" /><br /></a></li>
              <div id="innerChecklist8" class="hidden">
                <form>
                  <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                  <label for="start-time">Start Time:</label>
                  <input type="datetime-local" name="start-time" id="start-time">
                  <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                  <input type="submit" value="Save" id="changeButton"><br />
                </form>
              </div>
              <li><a id="black" onclick = "openList1('innerChecklist9');">Jot down notes from interview<input type="checkbox" name="colors" value="blue" /><br /></a></li>
              <div id="innerChecklist9" class="hidden">
                <form>
                  <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                  <label for="start-time">Start Time:</label>
                  <input type="datetime-local" name="start-time" id="start-time">
                  <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                  <input type="submit" value="Save" id="changeButton"><br />
                </form>
              </div>
              <li><a id="black" onclick = "openList1('innerChecklist10');">Check-in with recruiter<input type="checkbox" name="colors" value="blue" /><br /></a></li>
              <div id="innerChecklist10" class="hidden">
                <form>
                  <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                  <label for="start-time">Start Time:</label>
                  <input type="datetime-local" name="start-time" id="start-time">
                  <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                  <input type="submit" value="Save" id="changeButton"><br />
                </form>
              </div>
            </ol>



          <img id= "checkboxHeading4" onclick = "openList1('checkboxBody4');"src="arrow-updown.png" alt="arrow" width="25" height="25"/><a onclick = "openList1('checkboxBody4');"> SECOND ROUND INTERVIEWS</a> <a class="task">+ add task </a> <a id="pipe">|</a> <a class="notes"> + add notes</a>
          <br />
            <ol id="checkboxBody4" class="hidden">
              <li><a id="black" onclick = "openList1('innerChecklist11');">Prep for Interview<input type="checkbox" name="colors" value="blue"/><br /></a></li>
              <div id="innerChecklist11" class="hidden">
                <form>
                  <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                  <label for="start-time">Start Time:</label>
                  <input type="datetime-local" name="start-time" id="start-time">
                  <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                  <input type="submit" value="Save" id="changeButton"><br />
                </form>
              </div>
              <li><a id="black" onclick = "openList1('innerChecklist12');">Interview<input type="checkbox" name="colors" value="blue" /><br /></a></li>
              <div id="innerChecklist12" class="hidden">
                <form>
                  <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                  <label for="start-time">Start Time:</label>
                  <input type="datetime-local" name="start-time" id="start-time">
                  <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                  <input type="submit" value="Save" id="changeButton"><br />
                </form>
              </div>
              <li><a id="black" onclick = "openList1('innerChecklist13');">Send thank-you letters<input type="checkbox" name="colors" value="blue" /><br /></a></li>
              <div id="innerChecklist13" class="hidden">
                <form>
                  <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                  <label for="start-time">Start Time:</label>
                  <input type="datetime-local" name="start-time" id="start-time">
                  <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                  <input type="submit" value="Save" id="changeButton"><br />
                </form>
              </div>
              <li><a id="black" onclick = "openList1('innerChecklist14');">Jot down notes from interview<input type="checkbox" name="colors" value="blue" /><br /></a></li>
              <div id="innerChecklist14" class="hidden">
                <form>
                  <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                  <label for="start-time">Start Time:</label>
                  <input type="datetime-local" name="start-time" id="start-time">
                  <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                  <input type="submit" value="Save" id="changeButton"><br />
                </form>
              </div>
              <li><a id="black" onclick = "openList1('innerChecklist15');">Check-in with recruiter<input type="checkbox" name="colors" value="blue" /><br /></a></li>
              <div id="innerChecklist15" class="hidden">
                <form>
                  <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                  <label for="start-time">Start Time:</label>
                  <input type="datetime-local" name="start-time" id="start-time">
                  <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                  <input type="submit" value="Save" id="changeButton"><br />
                </form>
              </div>
            </ol>



            <img id = "checkboxHeading5" onclick = "openList1('checkboxBody5');"src="arrow-updown.png" alt="arrow" width="25" height="25"/><a onclick = "openList1('checkboxBody5');"> OFFER</a> <a class="task">+ add task </a> <a id="pipe">|</a> <a class="notes"> + add notes</a>
            <br />
              <ol id="checkboxBody5" class="hidden">
                <li><a id="black" onclick = "openList1('innerChecklist16');">Accept offer verbally, followed by formal acceptance in writing or make offer decline in writing<input type="checkbox" name="colors" value="blue"/><br /></a></li>
                <div id="innerChecklist16" class="hidden">
                  <form>
                    <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                    <label for="start-time">Start Time:</label>
                    <input type="datetime-local" name="start-time" id="start-time">
                    <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                    <input type="submit" value="Save" id="changeButton"><br />
                  </form>
                </div>
                <li><a id="black" onclick = "openList1('innerChecklist17');">Set offer expiration date<input type="checkbox" name="colors" value="blue" /><br /></a></li>
                <div id="innerChecklist17" class="hidden">
                  <form>
                    <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                    <label for="start-time">Start Time:</label>
                    <input type="datetime-local" name="start-time" id="start-time">
                    <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                    <input type="submit" value="Save" id="changeButton"><br />
                  </form>
                </div>
                <li><a id="black" onclick = "openList1('innerChecklist18');">Send thank-you letters<input type="checkbox" name="colors" value="blue" /><br /></a></li>
                <div id="innerChecklist18" class="hidden">
                  <form>
                    <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                    <label for="start-time">Start Time:</label>
                    <input type="datetime-local" name="start-time" id="start-time">
                    <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                    <input type="submit" value="Save" id="changeButton"><br />
                  </form>
                </div>
                <li><a id="black" onclick = "openList1('innerChecklist19');">Request offer in writing<input type="checkbox" name="colors" value="blue" /><br /></a></li>
                <div id="innerChecklist19" class="hidden">
                  <form>
                    <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                    <label for="start-time">Start Time:</label>
                    <input type="datetime-local" name="start-time" id="start-time">
                    <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                    <input type="submit" value="Save" id="changeButton"><br />
                  </form>
                </div>
                <li><a id="black" onclick = "openList1('innerChecklist20');">Review offer and clarify any questions<input type="checkbox" name="colors" value="blue" /><br /></a></li>
                <div id="innerChecklist20" class="hidden">
                  <form>
                    <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                    <label for="start-time">Start Time:</label>
                    <input type="datetime-local" name="start-time" id="start-time">
                    <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                    <input type="submit" value="Save" id="changeButton"><br />
                  </form>
                </div>
                <li><a id="black" onclick = "openList1('innerChecklist21');">Research and determine any negotiation terms<input type="checkbox" name="colors" value="blue"/><br /></a></li>
                <div id="innerChecklist21" class="hidden">
                  <form>
                    <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                    <label for="start-time">Start Time:</label>
                    <input type="datetime-local" name="start-time" id="start-time">
                    <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                    <input type="submit" value="Save" id="changeButton"><br />
                  </form>
                </div>
                <li><a id="black" onclick = "openList1('innerChecklist22');">Present counter-offer, if applicable<input type="checkbox" name="colors" value="blue" /><br /></a></li>
                <div id="innerChecklist22" class="hidden">
                  <form>
                    <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                    <label for="start-time">Start Time:</label>
                    <input type="datetime-local" name="start-time" id="start-time">
                    <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                    <input type="submit" value="Save" id="changeButton"><br />
                  </form>
                </div>
                <li><a id="black" onclick = "openList1('innerChecklist23');">Send thank-you letters to hiring manager, referrals and references<input type="checkbox" name="colors" value="blue" /><br /></a></li>
                <div id="innerChecklist23" class="hidden">
                  <form>
                    <input type="text" id="taskname" name="task name" placeholder="TASK NAME"><br />
                    <label for="start-time">Start Time:</label>
                    <input type="datetime-local" name="start-time" id="start-time">
                    <input type="text" id="details" name="details" placeholder="DETAILS"><br />
                    <input type="submit" value="Save" id="changeButton"><br />
                  </form>
                </div>
              </ol>

</div>
      </div>
</div>


      </div>



		</div>





<br /><br /><br />

	</div>



    <p id="message001"></p>
</center>


    <script type="text/javascript">


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
    var currentButtonId = "myBtn";
    var modal = document.getElementById('myModal');

    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    var jobTitle = document.getElementById("jTitle").value;
    var companyName = "";

    // When the user clicks the button, open the modal
   // btn.onclick = function() {
   //     modal.style.display = "block";

   // }

    function jobButton(the_id) {
        the_id = String(the_id);
        modal.style.display = "block";
        btn = document.getElementById(the_id);
        document.getElementById(the_id).value = document.getElementById("jTitle").value;
        document.getElementById(the_id).innerHTML = document.getElementById("jTitle").value;
    }

    function getFormValues(){
      var jobTitle = document.getElementById("jTitle").value;
      var companyName = "";
      modal.style.display = "none";
      document.getElementById(currentButtonId).value = jobTitle;
      document.getElementById(currentButtonId).innerHTML = jobTitle;

      var companyName = "";
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

    function openList1(id) {
    var list = document.getElementById(id);

    if (list.style.display == "none"){
        list.style.display = "block";
    }else{
        list.style.display = "none";
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

    function unhide(clickedButton, divID) {
var item = document.getElementById(divID);
if (item) {
    if(item.className=='hidden'){
        item.className = 'unhidden' ;
        clickedButton.value = 'hide'
    }else{
        item.className = 'hidden';
        clickedButton.value = 'unhide'
    }
}}
    </script>
</body>
</html>
