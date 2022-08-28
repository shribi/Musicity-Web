<?php
include "config.php";
		$sql="Select rating,s_name,a_name,c_name from songs where rating = 9 OR rating =10";
		$result = $link->query($sql);
		if($result->num_rows>0){
			echo "<center><table style='width:1100px; font-size: 24px; color: white; position: absolute; right: 15%; top: 17%;' cellpadding='10'><tr><th>RATING<hr></th><th>SONG<hr></th><th>ARTIST<hr></th><th>COMPOSER<hr></th></tr>";
			while($row = $result->fetch_assoc() ){
				echo "<tr><td><center>" .$row["rating"]. "</center></td><td>" .$row["s_name"]. "</td><td>" .$row["a_name"]. "</td><td>" .$row["c_name"]. "</td></tr>";
				
			}
			echo "</table></center>";
		}
		else{
				echo "0 results";
		}
		$link->close();
?>
<!DOCtype html>
<html>
<head>
<style>

<!-------------------------------------------------------------------------------------------------------------------------------->  
        * {
            padding: 0;
            margin: 0;
        }
 
        body{
            height: 100vh;
            width: 100%;
            background-image: url("http://localhost/MINI%20project/frontend/webpages/Images/p.jpg");
             
            /* Image used: */
            background-size: 1520px 900px;
            background-position: center;
            position: relative;
        }

        .content {
            width: 100%;
            position: absolute;
            top: 0px;
			left:-600px;
        }

        .left-col h1 {
            font-size: 50px;
            color:  #E6E4E4;
        }

        #icon {
            cursor: pointer;
        }
    </style>
	<!--------------------------------------------------------------------------------------------------------------------------------> 
<body> 
<div align = "center"><form action="nextpage.php" method="post"><br><br><br><br><br>
<h4>(Click Song Name to Play)</h4>
    <div class="content">
        <div class="left-col">
            <h1>MUSICITY</h1>
        </div></div>
 
        <div class="right-col">
</body></style>
</head>
<style>  
audio {
	position: absolute;
	top: -25px;
	left: 400px;
    width: 700px;
    height: 120px;
}
        #playlist{
            list-style: none;
        }
        #playlist li a{
            color:black;
            text-decoration: none;
        }
        .song1{position:absolute;top:215px;left:330px;font-size:26px;opacity:0;}
		.song2{position:absolute;top:265px;left:330px;font-size:26px;opacity:0;}
		.song3{position:absolute;top:312px;left:330px;font-size:26px;opacity:0;}
		.song4{position:absolute;top:362px;left:330px;font-size:26px;opacity:0;}
		.song5{position:absolute;top:412px;left:330px;font-size:26px;opacity:0;}
		.song6{position:absolute;top:462px;left:330px;font-size:26px;opacity:0;}
		.song7{position:absolute;top:510px;left:330px;font-size:26px;opacity:0;}
		.song8{position:absolute;top:560px;left:330px;font-size:26px;opacity:0;}
		.song9{position:absolute;top:607px;left:330px;font-size:26px;opacity:0;}
		.song10{position:absolute;top:657px;left:330px;font-size:26px;opacity:0;}
    </style>
<body>
    <audio src="" controls id="audioPlayer">
        Sorry, your browser doesn't support html5!
    </audio>
    <ul id="playlist">
        <li class="song1"><a href="http://localhost/MINI%20project/frontend/webpages/MUSIC/abhi%20mujh%20maine%20kahin.mp3">Abhi Mujh Mein Kahin</a></li>
        <li class="song2"><a href="http://localhost/MINI%20project/frontend/webpages/MUSIC/Sapna%20Jahan.mp3">Sapna Jahan</a></li>
        <li class="song3"><a href="http://localhost/MINI%20project/frontend/webpages/MUSIC/Tu%20Hi%20Re.mp3">Tu Hi Re</a></li>
		<li class="song4"><a href="http://localhost/MINI%20project/frontend/webpages/MUSIC/Garaj%20Garaj.mp3">Garaj Garaj</a></li>
		<li class="song5"><a href="http://localhost/MINI%20project/frontend/webpages/MUSIC/Main%20Rahoon%20Ya%20Na%20Rahoon.mp3">Main Rahoon Ya Na Rahoon</a></li>
		<li class="song6"><a href="http://localhost/MINI%20project/frontend/webpages/MUSIC/Aayat.mp3">Aayat</a></li>
		<li class="song7"><a href="http://localhost/MINI%20project/frontend/webpages/MUSIC/Tere%20Rang.mp3">Tere Rang</a></li>
		<li class="song8"><a href="http://localhost/MINI%20project/frontend/webpages/MUSIC/Behti%20Hawa%20Sa%20Tha%20Woh.mp3">Behti Hawa Sa Tha Woh</a></li>
		<li class="song9"><a href="http://localhost/MINI%20project/frontend/webpages/MUSIC/O%20Sathi%20Mere.mp3">O Sathi Mere</a></li>
		<li class="song10"><a href="http://localhost/MINI%20project/frontend/webpages/MUSIC/Bheege%20Bheege.mp3">Bheege Bheege</a></li>
    </ul>
    <script src="https://code.jquery.com/jquery-2.2.0.js"></script>
    <script src="audioPlayer.js"></script>
    <script>
        // loads the audio player
        audioPlayer();
    </script>
</body>
</head>

<!--------------------------------------------------------------------------------------------------------------------------------> 
</html>