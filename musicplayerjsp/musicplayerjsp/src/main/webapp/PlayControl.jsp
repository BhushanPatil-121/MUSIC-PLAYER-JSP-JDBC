<%@page import="com.jspider.musicplayerjsp.song.SongPlay"%>
<%@page import="com.jspider.musicplayerjsp.song.Song"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Playing Song</title>
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
	scrollbar-width: thin;
	scrollbar-color: var(- -thumbBG) var(- -scrollbarBG);
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

.social {
	font-family: "Inter", sans-serif;
	text-shadow: 2px 2px 4px #7b7979;
	position: absolute;
	width: 300px;
	height: 40px;
	font-weight: bold;
	font-size: 15px;
	left: 78%;
	top: 30px;
	gap: 20px;
	display: flex;
	justify-content: flex-end;
	align-items: center;
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
	z-index: -1;
}

.add {
	position: absolute;
	margin-left: 110px;
	font-family: "Inter", sans-serif;
	font-size: 80px;
	font-weight: 800;
	text-shadow: 2px 5px 14px #020202;
	color: rgb(226, 226, 226);
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

#btn {
	position: absolute;
	top: 82%;
	width: 70%;
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 40px;
}

.list {
	z-index: 5;
	position: absolute;
	top: 15%;
	height: 70%;
	width: 60%;
	left: 5%;
	background-color: rgba(255, 0, 208, 0.167);
	color: white;
	font-family: "Inter", sans-serif;
	font-size: 40px;
	letter-spacing: 1px;
	line-height: 60px;
	padding-left: 40px;
	padding-top: 20px; 
}

td {
	padding-left: 50px;
}
.controll{
	display:flex;
	justify-content: center;
	align-items: center;
	gap:20px;
}
.cont{
	
}
#sa{
	display: flex;
	justify-content: center;
	align-items: center;
	
}
#sna{
	display: flex;
	justify-content: center;
	align-items: center;
	
}
.sa{
	height: 240px;
	width: 320px;
}

</style>
</head>

<body>

	<% 
	
	String button = request.getParameter("button");
	String link=request.getParameter("name");
	String name=request.getParameter("song");
	boolean active=false;
	boolean pause=false;
	if(link!=null){
		SongPlay.query=request.getParameter("name");
	}
	 if ("button1".equals(button)) {
		 SongPlay.play();
		 active=true;
		 pause=false;
     } else if ("button2".equals(button)) {
    	 SongPlay.pause();
    	 active=false;
    	 pause=true;
     }else if ("button3".equals(button)) {
    	 SongPlay.resume();
    	 pause=false;
    	 active=true;
      }else if ("button4".equals(button)) {
    	  SongPlay.stop();
         %>
         <jsp:forward page="/PlaySong.jsp"></jsp:forward>
         
          <% 
     } 
	%>	
	<div class="list">
	<h2 style="text-align: center; margin-bottom: 30px">Playing <% if(name!=null){%><span style="color: aqua;"><%= name %></span><% } %> Song</h2>
	<h1  style="z-index: 20; font-size: 50px; position: absolute;">
	</h1>
	<% if(SongPlay.isActive && active ){
			 %>
			 <div id="sa">
			 	<img class="sa" alt="song-Playing" src="https://cutewallpaper.org/21/music-equalizer-gif/Pin-on-Music.gif">
			 </div>
			 <% 
		 }
	   if(!SongPlay.isActive && active){
			 %>
			 <div id="sna">
			 	<img class="sa" alt="song-not-Avilable" src="https://media.tenor.com/V9Z08mOcTJwAAAAC/this-content-is-not-available.gif">
			 </div>
			 <% 
		 }
	   if(pause){
			 %>
			 <div id="sna">
			 	<img class="sa" alt="song-not-Avilable" src="https://media.tenor.com/OAKm2CmiB1EAAAAC/play-pause.gif">
			 </div>
			 <% 
		 }
	%>
	<div class="controll">
	<form action="./PlayControl.jsp" method="post">
	
    <button class="glow-on-hover cont" type="submit" name="button" value="button1">START</button>
    <button class="glow-on-hover cont" type="submit" name="button" value="button2">PAUSE</button>
    <button class="glow-on-hover cont" type="submit" name="button" value="button3">RESUME</button>
    <button class="glow-on-hover cont" type="submit" name="button" value="button4">STOP</button>
    <input value="<%=name%>" name="song" type="text" hidden="">
	</form> 
	</div></div>			
				
		
	<div id="background"></div>
	<div id="navbar"></div>
	<div id="logo">
		<img id="logo-img"
			src="https://cdn-icons-png.flaticon.com/512/6707/6707113.png"
			alt="LOGO" /> <span class="logo-name">MUSIC-PLAYER</span>
		<div class="social">
			<span>CONTACT US</span> <i class="fa fa-instagram icon1"
				style="font-size: 38px; color: black; font-weight: bold"></i> <i
				class="material-icons icon2" style="font-size: 46px; color: black">mail_outline</i>
		</div>
	</div>
	<div id="content">
		
		<div class="content-left">
			<div id="btn">
				
				
			</div>
		</div>
	</div>
	<div class="content-right">
		<img class="music-girl"
			src="https://i.ibb.co/3d1GNVD/music-girl.png"
			alt="music" />
	</div>
<script>
    history.forward();
</script>
</body>
</html>
