#!/bin/bash
echo "<html>
<head>
<style>
body{
	text-align:center;
	background:#000;
}
video {
 width: 560px;
 height: 415px;
 margin:30px;
 
}
</style>
</head>
<body>
" > index.html

for f in *.webm;
do
	echo "<video controls muted autoplay preload='none' loop>
		  <source src='$f' type='video/webm' >
	      </video>
	" >> index.html

done

echo "
</body>
</html>
" >> index.html
