<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Music Player</title>
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
	filter: blur(7px);
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

.search-logo {
	height: 38px;
	width: 50px;
	position: absolute;
	top: 2px;
	border-radius: 20px;
	left: 420px;
	background-color: white;
	box-shadow: 2px 2px 10px black;
}

.search-logo-img {
	position: absolute;
	height: 32px;
	margin-left: 25px;
	margin-top: -20px;
	z-index: 3;
}

.social {
	font-family: "Inter", sans-serif;
	text-shadow: 2px 2px 4px #7b7979;
	position: absolute;
	width: 270px;
	height: 50px;
	font-weight: bold;
	top:-4px;
	font-size: 15px;
	left: 68px;
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
	top: 105px;
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

.play {
	position: absolute;
	margin-left: 78px;
	margin-top: 30px;
	font-family: "Inter", sans-serif;
	font-size: 200px;
	font-weight: 800;
	text-shadow: 2px 5px 14px #020202;
	color: rgb(226, 226, 226);
}
.play-btn{
	position: absolute;
	margin-left: 43%;
	margin-top: 30px;
	font-family: "Inter", sans-serif;
	font-size: 200px;
	font-weight: 900;
	text-shadow: 2px 5px 14px #020202;
	color: rgb(6, 206, 216);
}
.play-logo{
text-shadow: 2px 5px 14px #020202;
	color: rgb(238, 43, 251);
}

.description {
	position: absolute;
	top: 300px;
	left: 115px;
	width: 800px;
	font-family: "Inter", sans-serif;
	color: white;
	font-size: 20px;
	text-align: left;
	letter-spacing: 1px;
	line-height: 30px;
}

/* buttons */
#buttons {
	display: flex;
	position: absolute;
	bottom: 100px;
	left: 115px;
	justify-content: center;
	align-items: center;
	gap: 30px;
}

.glow-on-hover {
	font-family: "Inter", sans-serif;
	width: 190px;
	height: 60px;
	border: none;
	outline: none;
	font-size: 14spx;
	font-weight: 900;
	color: #fff;
	background: #111;
	cursor: pointer;
	position: relative;
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
			<form action="./SearchSong.jsp" method="post">
				<input type="text" name="search-song" id="song-id" class="inp-search" placeholder="SEARCH SONG "
					required="required" title="Please enter song name"
					/>
				<button type="submit" ><img class="search-logo-img"
					src="https://i.ibb.co/tK1BJFG/search-icon-png-9981.png"
					alt="SEARCH" /></button>
			</form>

			<div class="search-logo">
				
				<div class="social">
					<span>CONTACT US</span> 
					<a href="https://www.instagram.com" ><i class="fa fa-instagram icon1"
						style="font-size: 38px; color: black; font-weight: bold"></i></a>
						 <a href="https://www.gmail.com" ><i class="material-icons icon2" style="font-size: 46px; color: black">mail_outline</i></a>
				</div>
			</div>
		</div>
	</div>
	<div id="content">
		<div class="content-left">
		<span class="play"><a href="./PlaySong.jsp">PLAY</a></span>
			<span class="play-btn"><a href="./PlaySong.jsp"><i class="fa fa-play-circle-o play-logo" style="font-size:180px;"></i></a></span>
			<p class="description">Music-player application designed to play
				and manage audio data on a device. These application allow users to
				add songs, browse their songs, search for specific songs.</p>
			<div id="buttons">
				<button class="glow-on-hover" type="button"><a href="./SongList.jsp">SONG LIST</a></button>
				<button class="glow-on-hover" type="button">
					<a href="./AddSong.jsp">ADD SONG</a>
				</button>
				<button class="glow-on-hover" type="button"><a href="./UpdateSong.jsp">UPDATE SONG</a></button>
				<button class="glow-on-hover" type="button"><a href="./RemoveSong.jsp">REMOVE SONG</a></button>
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