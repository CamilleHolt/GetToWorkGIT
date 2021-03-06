<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
  <link rel= "stylesheet" href="login-modal.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Log In | Sign Up</title>

<style>
		.topnav {
	overflow: hidden;
	background-color: #333;
}
img {
  border-radius: 50px;
}
h3 {
  color: white;
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
.bg-modal{
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.7);
  opacity: 0.7;
  position: absolute;
  top: 0;
  display: flex;
  justify-content: center;
  align-items: center;
}
.modalcontent{
  width: 500px;
  height: 400px;
  background-color: white;
  border-radius: 4px;
  text-align: center;
  padding: 20px;
  position: relative;
}
.signup-modal-content {
  width: 500px;
  height: 400px;
  background-color: white;
  border-radius: 4px;
  text-align: center;
  padding: 20px;
  position: relative;
}
.button {
	background-color: green;
	border: 2px solid black;
	border-radius: 0px;
	text-decoration: none;
	padding: 10px 28px;
	color: white;
	margin-top: 10px;
	display: inline-block;
}
	.button:hover {
		background-color: lightgray;
		color: white;
		border: 2px solid black;
	}
.close {
	position: absolute;
	top: 0;
	right: 14px;
	font-size: 42px;
	color: #333;
	transform: rotate(45deg);
	cursor: pointer;
}
.close:hover {
		color: #666;
	}
  /* Style the tab */
  .tab {
      overflow: hidden;
      border: 1px solid #ccc;
      background-color: #f1f1f1;
  }
  /* Style the buttons inside the tab */
  .tab button {
      background-color: inherit;
      float: left;
      border: none;
      outline: none;
      cursor: pointer;
      padding: 14px 16px;
      transition: 0.3s;
      font-size: 17px;
  }
  /* Change background color of buttons on hover */
  .tab button:hover {
      background-color: #ddd;
  }
  /* Create an active/current tablink class */
  .tab button.active {
      background-color: #ccc;
  }
  /* Style the tab content */
  .tabcontent {
      display: none;
      width: 500px;
      height: 450px;
      background-image: url(Picture2.png);
      border-radius: 4px;
      text-align: center;
      padding: 20px;
      position: relative;
  }
  /* Style the close button */
  .topright {
      float: right;
      cursor: pointer;
      font-size: 28px;
  }
  .topright:hover {color: red;}
  </style>
  </head>
  <body>
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

<div class="bg-modal">
  <div>
  <div class="tab">
    <button class="tablinks" onclick="openCreds(event, 'signup')" id="defaultOpen">Sign Up</button>
    <button class="tablinks" onclick="openCreds(event, 'login')">Log In</button>
  </div>

  <div id="signup" class="tabcontent">
    <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
    <img src="./grayish-icon.png" alt="./black-woman-icon.png" height="90px" width="90px">
     <h3>Create an Account</h3>

       <input type="text" id="email" placeholder="Email" >
       <input type="text" id="first" placeholder="First Name" >
       <input type="text" id="last" placeholder="Last Name" >
       <input type="text" id="pass" placeholder="Password" >
       <input class="button" type = "button" onclick = "validateUser();" name = "ok" value = "Register Now">
  </div>

  <div id="login" class="tabcontent">
    <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
    <img src="grayish-icon.png" alt="black-woman-icon" height="90px" width="90px">
     <h3>Log In</h3>
       <input type="text" id="emaillg" placeholder="Email">
       <input type="text" id="passlg" placeholder="Password">
       <input class="button" type = "button" onclick = "login();" name = "ok" value = "Login">
  </div>
</div>


    <script src="https://www.gstatic.com/firebasejs/5.5.7/firebase.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyDaPAXZDInCAKakKOBZXy8u-E_XbwEPq6k",
    authDomain: "get-to-work-9215b.firebaseapp.com",
    databaseURL: "https://get-to-work-9215b.firebaseio.com",
    projectId: "get-to-work-9215b",
    storageBucket: "get-to-work-9215b.appspot.com",
    messagingSenderId: "70498652985"
  };
  firebase.initializeApp(config);

var db = firebase.firestore();

function validateUser()
{
  var email = document.getElementById('email').value;
  var first = document.getElementById('first').value;
  var last = document.getElementById('last').value;
  var password = document.getElementById('pass').value;

  var docRef = db.collection("Users").doc(email);
  
  docRef.get().then(function(doc) {
    if (doc.exists) 
    {
      alert("This email address is already registered!");
      console.log("exists");
      return;
    } 
    else
    {
      if (email == "" || first == "" || last == "" || password == "")
      {
        alert("One of your fields is empty. Please complete every field.");
        return;
      }
      var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/; // credit to w3 schools for this. https://www.w3resource.com/javascript/form/email-validation.php
      
      if(!email.match(mailformat))
      {
        alert("Your email address is invalid.");return;
      }
      if (first.length < 2 || last.length < 2)
      {
        alert("Your first or last name is too short");
        return;
      }
      if (password.length < 8)
      {
        alert("Your password is too short!");
        return;
      }
      register();
    }
      }).catch(function(error) 
      {
        alert("There has been some error. Perhaps you attempted to register with an invalid email address. Please try again.");console.log("Error getting document:", error);
        });
}
function login()
{
  var email = document.getElementById('emaillg').value
  var pass = document.getElementById('passlg').value

  var docRef = db.collection("Users").doc(email);
  
  docRef.get().then(function(doc) {
    if (doc.exists) 
    {
      if (doc.data().password == pass)
      {
        console.log("Document data:", doc.data());
        //window.location.replace("https://gettowork-73510.appspot.com");

        window.open("https://gettowork-73510.appspot.com/dp.jsp" + '?json=' + doc.data().email)
      }
      else
      {
        alert("This is the wrong password");
        console.log("wrong password");
      }
    } 
    else 
    {
      alert("This email address is not registered!");
        // doc.data() will be undefined in this case
        console.log("No such document!");
    }
    }).catch(function(error) 
    {
      alert("This email address is not registered!");
    console.log("Error getting document:", error);
    });
}
function register()
{
  var userEmail = document.getElementById('email').value;
  db.collection("Users").doc(userEmail).set({
    email: userEmail,
    first: document.getElementById('first').value,
    last: document.getElementById('last').value,
    password: document.getElementById('pass').value
    })
    .then(function(docRef) {
      console.log("Document written with ID: ", docRef.id);
      })
      .catch(function(error) {
        console.error("Error adding document: ", error);
        });
        window.location.href = 'https://gettowork-73510.appspot.com/dp.jsp?email='+document.getElementById('email').value;
}
  function openCreds(evt, creds) {
      var i, tabcontent, tablinks;
      tabcontent = document.getElementsByClassName("tabcontent");
      for (i = 0; i < tabcontent.length; i++) {
          tabcontent[i].style.display = "none";
      }
      tablinks = document.getElementsByClassName("tablinks");
      for (i = 0; i < tablinks.length; i++) {
          tablinks[i].className = tablinks[i].className.replace(" active", "");
      }
      document.getElementById(creds).style.display = "block";
      evt.currentTarget.className += " active";
  }
  // Get the element with id="defaultOpen" and click on it
  document.getElementById("defaultOpen").click();
</script>
<script src="register.js"></script>

   <!--   <a href="#" class="button">Log In</a>
      <a href="#" class="button">Sign Up</a>  -->

</body>
</html>