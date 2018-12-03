<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link rel= "stylesheet" href="dragNdrop.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
    box-sizing: border-box;
}

body {
    margin: 0;
    font-family: Arial;
    font-size: 17px;
		background: rgba(0, 0, 0, 0.5);
}

#myVideo {
    right: 0;
    bottom: 0;
    width: 100%;
    height: 50%;
}

.contentTop {
    position: fixed;
    top: 0;
    background: rgba(0, 0, 0, 0.5);
    color: #f1f1f1;
    width: 100%;
    padding: 20px;
}

#myBtn {
    width: 200px;
    font-size: 18px;
    padding: 10px;
    border: none;
    background: #000;
    color: #fff;
		background-color: green;
    cursor: pointer;
		radius: 50%;
		right: 0;
}

#myBtn2 {
    width: 200px;
    font-size: 18px;
    padding: 10px;
    border: none;
    background: #000;
    color: #fff;
		background-color: green;
    cursor: pointer;
		radius: 50%;
		right: 0;
}

#boxzero {
	height: 80vh;
	width: 100%;
	background-size: 50% 50%;
	background-size: cover;
	display: table;

}

#box1 {
	height: 100%;
	width: 100%;
	background-size: cover;
	display: table;
	color: white;
  background-position: fixed;
}

#box2 {
	background-color: lightgreen;
	height: 100%;
	width: 100%;
	background-size: 50% 50%;
	background-size: cover;
	display: table;
	color: white;
  justify-content: center;
  text-align: center;

}
  #box3{
    background-color: white;
    height: 700px;
    width: 100%;
    background-size: 50% 50%;
    background-size: cover;
    display: table;
    color: black;
    background-position: fixed;
  }

  #box3B{
    background-color: lightgray;
    height: 700px;
    width: 100%;
    background-size: 50% 50%;
    background-size: cover;
    display: table;
    color: black;
    background-position: fixed;
  }

  #box4{
    background-color: green;
    height: 450px;
    width: 100%;
    background-size: 50% 50%;
    background-size: cover;
    display: table;
    color: black;
    background-position: fixed;

  }

  #box5{
    background-color: green;
    height: 100px;
    width: 100%;
    background-size: 50% 50%;
    background-size: cover;
    display: table;
    color: white;
    background-position: fixed;
    text-align: center;

  }

  #insidebox{
    background-color: white;
    height: 100vh;
    width: 120vh;
    background-size: 50% 50%;
    background-size: cover;
    display: table;
    color: white;
    background-position: fixed;
    padding: 90px;
    background-position: center;
  }
  #insidebox2{
    background-color: lightgray;
    height: 50vh;
    width: 120vh;
    background-size: 50% 50%;
    background-size: cover;
    display: table;
    color: white;
    background-position: center;
    background-position: fixed;
  }
  #insidebox3{
    background-color: lightgray;
    height: 50vh;
    width: 120vh;
    background-size: 50% 50%;
    background-size: cover;
    display: table;
    color: white;
    background-position: center;
    background-position: fixed;
    padding-top: 80px;
  }
#myBtn:hover {
    background: #ddd;
    color: black;
}

#myBtn2:hover {
    background: #ddd;
    color: black;
}
.changeFont {
	color: white;
	font-size: 30;
	position: center;
	font-family: Georgia;
	text-align: center;
	padding: 10px;
	margin-top: 80px;
	margin-bottom: 15px;
}
.changeFont2 {
	color: white;
	position: center;
	font-family: Georgia;
	text-align: center;
	padding: 10px;
	margin-top: 10px;
}
.changeFont3 {
	color: white;
	position: center;
	font-family: Georgia;
	text-align: center;
	font-size: 18px;
	padding: 10px;
	margin-top: 10px;
}
.changeFontInsideBox {
  color: green;
	font-family: Georgia;
	font-size: 30px;
	padding: 10px;
	margin-top: 0px;
  left: 0;
  margin-bottom: 0px;

}

.changeFontToBlack {
  color: black;
  font-size: 18px;
  float: left;
  font-weight: lighter;
  font-family: serif;
  padding-bottom: 20px;
}
.changeFontToBlack2 {
  color: black;
  font-size: 18px;
  font-weight: lighter;
  font-family: serif;

}
.button {
	background-color: green;
	border: 2px solid white;
	border-radius: 30px;
	text-decoration: none;
	padding: 10px 28px;
	color: white;
	margin-top: 10px;
	display: inline-block;
}

	.button:hover {
		background-color: white;
		color: blue;
		border: 2px solid blue;
	}
  .border {
    border-color: black;
    padding: 20px;
  }
  .padding{
    margin-bottom: 35px;
  }
  .padding2{
    margin-top: 90px;
  }


  * {
    box-sizing: border-box;
}

/* Create three equal columns that floats next to each other */
.column {
    float: left;
    width: 33.33%;
    padding: 10px;
    height: 200px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}


#center-texth2 {
  text-align: center;
  color: white;
  padding-top: 20px;
  font-size: 18px;
}

#center-texth3 {
  text-align: center;
  color: white;
  padding-top: 20px;
  font-size: 12px;
  font-weight: lighter;
}

#center-textp {
  text-align: center;
  color: lightgray;
  font-size: 14px;
}


</style>
</head>
<body>


<div id="box1">

  <video autoplay muted id="myVideo" controls loop>
    <source src="TypingPro.mp4" type="video/mp4">
    Your browser does not support HTML5 video.
  </video>
</div>

<div id="box2">
	<h2 class="changeFont">Land your dream job faster and easier</h2>
	<h2 class="changeFont2">____</h2>
	<h2 class="changeFont3">Jobwell is a job search organizer that applies the tried-and-true sales pipeline </h2>
	<h2 class="changeFont3">management approach to bring discipline and confidence to your job search.</h2>
  <a href="login-modal.jsp" target="_blank" class="button">Get Started</a>
</div>


<div id="box3">
  <center>
  <div id="insidebox">
  <h2 class="changeFontInsideBox">Be More Effective</h2>
  <h2 class="changeFontToBlack">A structured approach helps you stay organized and focused so you feel more in control of your job search.</h2>
  <img src="dpmorgan.png" alt="jobs dashboard" width="800" height="240" class="padding">
  <h2 class="changeFontInsideBox">Reduce Stress & Anxiety</h2>
  <h2 class="changeFontToBlack">A visual, intuitive layout helps you instantly see where all of your job applications and networking activities stand and what you need to do next<h2>
</div>
</center>
</div>

<div id="box3B">
  <center>
  <div id="insidebox3">
  <img src="checklist.png" alt="jobs dashboard" width="800" height="600" class="padding">
</div>
</center>
</div>


<div class="row">
  <div class="column" style="background-color:green;">
    <h2 id="center-texth2">Solution</h2>
    <p id="center-textp">Features</p>
    <p id="center-textp">Quick Start Video</p>
    <p id="center-textp">FAQ</p>
  </div>
  <div class="column" style="background-color:green;">
    <h2 id="center-texth2">Company</h2>
    <p id="center-textp">About</p>
    <p id="center-textp">Media</p>
    <p id="center-textp">Terms & Privacy</p>
  </div>
  <div class="column" style="background-color:green;">
    <h2 id="center-texth2">Connect</h2>
    <p id="center-textp">Contact Us</p>
  </div>
</div>
<div id="box5">
<h2 id="center-texth3">GetToWork Inc. |  info@gettowork.com | © 2018 All Rights Reserved</h2>
</div>
<script>
var video = document.getElementById("myVideo");
var btn = document.getElementById("myBtn");

function myFunction() {
  if (video.paused) {
    video.play();
    btn.innerHTML = "Pause";
  } else {
    video.pause();
    btn.innerHTML = "Play";
  }
}
</script>

</body>
</html>