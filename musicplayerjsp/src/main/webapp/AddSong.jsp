
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adding Song</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" />
<style>
* {
	box-sizing: border-box;
	margin: 0px;
	padding: 0px;
}

body {
	height: 100vh;
	user-select: none;
}

#background {
	height: 100%;
	width: 100%;
	position: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	background-image:
		url("https://images.unsplash.com/photo-1571397133301-3f838ea96f56?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80");
	filter: blur(20px);
	border: 50px solid black;
	transform: scale(1.1);
	z-index: -1;
}

#navbar {
	height: 100px;
	width: 100%;
	background-color: rgba(255, 255, 255, 0.853);
	filter: blur(1px);
	position: absolute;
}

#logo {
	height: 100px;
	width: 100%;
	position: absolute;
	display: flex;
	justify-content: flex-start;
	align-items: center;
	padding-left: 30px;
}

#logo-img {
	height: 50px;
	width: 50px;
	position: absolute;
}

.logo-name {
	position: absolute;
	left: 105px;
	font-family: "Inter", sans-serif;
	font-size: 40px;
	font-weight: 900;
	text-shadow: 2px 2px 4px #7b7979;
}

.search {
	position: absolute;
	right: 400px;
}

.inp-search {
	height: 42px;
	width: 400px;
	padding-left: 30px;
	box-shadow: 2px 2px 10px black;
	border-radius: 20px;
	font-size: 15px;
	font-weight: bold;
}


.social {
	font-family: "Inter", sans-serif;
	text-shadow: 2px 2px 4px #7b7979;
	position: absolute;
	width: 270px;
	height: 50px;
	font-weight: bold;
	font-size: 15px;
	left: 80px;
	top:-23px;
	margin-left:30px;
	display: flex;
	justify-content: center;
	align-items: center;
}
.icon1{
margin-top:-3px;
margin-left: 20px;
}
.icon2{
	margin-left: -40px;
}

#content {
	position: absolute;
	top: 110px;
	width: 100%;
	height: 85%;
	display: flex;
}

.content-right {
	height: 100%;
	width: 40%;
	right: 0px;
	position: absolute;
	display: flex;
	justify-content: end;
	align-items: flex-end;
}

.music-girl {
	position: fixed;
	top: 190px;
	right: 15px;
	scale: 1.5;
	filter: brightness(1.1);
}

.add {
	position: absolute;
	margin-left: 110px;
	font-family: "Inter", sans-serif;
	font-size: 78px;
	font-weight: 800;
	text-shadow: 2px 5px 14px #020202;
	color: rgb(226, 226, 226);
}

#form {
	position: absolute;
	top: 120px;
	left: 85px;
	color: rgb(210, 210, 210);
	font-family: "Inter", sans-serif;
	font-size: 32px;
	line-height: 70px;
}

td input {
	background-color: transparent;
	border: none;
	outline: none;
	border-bottom: 0.5px solid #f71cfb;
	color: rgb(210, 210, 210);
	font-size: 28px;
}

td {
	padding-left: 50px;
}

/* buttons */
#buttons {
	display: flex;
	position: absolute;
	bottom: 100px;
	left: 115px;
	justify-content: center;
	align-items: center;
	
}

.glow-on-hover {
margin-left:30px;
	font-family: "Inter", sans-serif;
	width: 150px;
	height: 60px;
	border: none;
	outline: none;
	font-size: 20px;
	font-weight: 900;
	color: #fff;
	background: #111;
	cursor: pointer;
	position: relative;
	top: 20px;
	z-index: 0;
	border-radius: 10px;
	background: linear-gradient(45deg, #ff0000, #ff7300, #fffb00, #48ff00, #00ffd5,
		#002bff, #7a00ff, #ff00c8, #ff0000);
}

.glow-on-hover:before {
	content: "";
	background: linear-gradient(45deg, #ff0000, #ff7300, #fffb00, #48ff00, #00ffd5,
		#002bff, #7a00ff, #ff00c8, #ff0000);
	position: absolute;
	top: -2px;
	left: -2px;
	background-size: 400%;
	z-index: -1;
	filter: blur(5px);
	width: calc(100% + 4px);
	height: calc(100% + 4px);
	animation: glowing 20s linear infinite;
	opacity: 0;
	transition: opacity 0.3s ease-in-out;
	border-radius: 10px;
}

.glow-on-hover:active {
	color: #000;
}

.glow-on-hover:active:after {
	background: transparent;
}

.glow-on-hover:hover:before {
	opacity: 1;
}

.glow-on-hover:after {
	z-index: -1;
	content: "";
	position: absolute;
	width: 100%;
	height: 100%;
	background: #f71cfb;
	left: 0;
	top: 0;
	border-radius: 10px;
}

@
keyframes glowing { 0% {
	background-position: 0 0;
}

50


%
{
background-position

:

400

%
0

;
}
100

%
{
background-position

:

0


0

;
}
}
a:link, a:visited {
	color: white;
	padding: 14px 25px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
}

</style>
</head>
<body>

	<div id="background"></div>
	<div id="navbar"></div>
	<div id="logo">
		<img id="logo-img"
			src="https://cdn-icons-png.flaticon.com/512/6707/6707113.png"
			alt="LOGO" /> <span class="logo-name">MUSIC-PLAYER</span>
		<div class="search">
			<div class="social">
					<span>CONTACT US</span> 
					<a href="https://www.instagram.com" ><i class="fa fa-instagram icon1"
						style="font-size: 38px; color: black; font-weight: bold"></i></a>
						 <a href="https://www.gmail.com" ><i class="material-icons icon2" style="font-size: 46px; color: black">mail_outline</i></a>
				</div>
		</div>
	</div>
	<div id="content">
		<div class="content-left">
			<span class="add">ADDING SONG</span>
			<div id="form">
				<form action="./SongAdded.jsp" method="post">
					<table>
						<tr>
							<td><label for="song-id"><ul>
										<li>Song ID</li>
									</ul> </label></td>
							<td><input type="text" name="id" autofocus="autofocus" placeholder="Enter Id (Number e.g, 0,1..)" id="song-id" required="required" title="Please enter Number." oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/></td>
						</tr>
						<tr>
							<td><label for="song-name"><ul>
										<li>Song Name</li>
									</ul></label></td>
							<td><input type="text" placeholder="Enter Song Name" name="song" id="song-name" required="required"/></td>
						</tr>
						<tr>
							<td><label for="singer-name"><ul>
										<li>Singer Name</li>
									</ul></label></td>
							<td><input type="text" placeholder="Enter Singer Name" name="singer" id="singer-name" required="required"/></td>
						</tr>
						<tr>
							<td><label for="movie-name"><ul>
										<li>Movie Name</li>
									</ul></label></td>
							<td><input type="text" placeholder="Enter Movie Name" name="movie" id="movie-name" required="required"/></td>
						</tr>
						<tr>
							<td><label for="duration"><ul>
										<li>Song File-Path</li>
									</ul></label></td>
							<td><input type="text" size="40" placeholder="Enter Absolute Path Of Song" required="required" name="path" id="song-path" /></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<button class="glow-on-hover" type="button">
									<a href="./HomePage.jsp">BACK</a>
								</button>
								<button class="glow-on-hover" type="submit"  >
									ADD</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div class="content-right">
			<img class="music-girl"
				src="https://i.ibb.co/3d1GNVD/music-girl.png"
				alt="music" />
		</div>
	</div>
	
	
</body>
</html>
