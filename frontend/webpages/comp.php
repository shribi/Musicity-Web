<?php
include "config.php";
		$sql="Select s_name,a_name,l_name,rating from songs where c_name= 'A R Rahman'";
		$result = $link->query($sql);
		if($result->num_rows>0){
			echo "<center><table style='width:1100px; font-size: 24px; color: white; position: absolute; right: 15%; top: 20%;' cellpadding='10'><tr><th>SONG<hr></th><th>ARTIST<hr></th><th>LABEL<hr></th><th>RATING<hr></th></tr>";
			while($row = $result->fetch_assoc() ){
				$sname=$row["s_name"];
				echo "<tr><td>" .$sname. "</td><td>" .$row['a_name']. "</td><td>".$row["l_name"]. "</td><td><center>" .$row["rating"]. "</center></td></tr>";
				
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
            background-image: url('http://localhost/MINI%20project/frontend/webpages/Images/p.jpg');
             
            /* Image used: */
            background-size: 1520px 900px;
            background-position: center;
            position: relative;
        }

        .content {
            width: 100%;
			position:absolute;
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
  
</head>
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
<!--------------------------------------------------------------------------------------------------------------------------------> 
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
        .song1{position:absolute;top:240px;left:185px;font-size:26px;opacity:0;}
		.song2{position:absolute;top:290px;left:185px;font-size:26px;opacity:0;}
		.song3{position:absolute;top:340px;left:185px;font-size:26px;opacity:0;}
    </style>
<body>
    <audio src="" controls id="audioPlayer"></audio>
    <ul id="playlist">
        <li class="song1"><a href="http://localhost/MINI%20project/frontend/webpages/MUSIC/Tu%20Hi%20Re.mp3">Tu Hi Re</a></li>
        <li class="song2"><a href="http://localhost/MINI%20project/frontend/webpages/MUSIC/Tere%20Rang.mp3">Tere Rang</a></li>
        <li class="song3"><a href="http://localhost/MINI%20project/frontend/webpages/MUSIC/Tum%20Saath%20Ho.mp3">Tum Saath Ho</a></li>
    </ul>
    <script src="https://code.jquery.com/jquery-2.2.0.js"></script>
    <script src="audioPlayer.js"></script>
    <script>
        // loads the audio player
        audioPlayer();
    </script>
</html>