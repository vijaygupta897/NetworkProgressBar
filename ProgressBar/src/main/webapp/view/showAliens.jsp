<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
<style>
.progress {
	display: inline;
}
</style>
</head>

<body onload="move()">
	<div style="margin-top: 5%; margin-left: 4%; margin-right: 4%">


		<table border="1">
			<tr>
				<td><b> Length </b></td>
				<td><b>Rate</b></td>
				<td><b>Packet-size </b></td>
			</tr>
			<tr>
				<td style="padding: 0%">
					<p id="lengthvalue">${result.getLength()}</p>
				</td>
				<td style="padding: 0%">
					<p id="ratevalue">${result.getRate()}</p>
				</td>
				<td style="padding: 0%">
					<p id="packetvalue">${result.getPacket()}</p>
				</td>
			</tr>
		</table>
		<br>

		<table id="table" style="width: 100%;">

			<tr>
				<td style="width: 3%;"><i class="fa fa-server"
					aria-hidden="true" style="margin-left: 10px;"></i></td>
				<td id="bar" style="width: 94%;">
					<div class="w3-light-gray">
						<div id="myBar" class="w3-red w3-center"
							style="width: 0px; height: 30px;"></div>

					</div>
				</td>
				<td id="rfav" style="width: 3%;"><i class="fa fa-users"
					aria-hidden="true"></i></td>


			</tr>
			
			
		</table>
		<p id="time" style="color:purple;"> </p><br>
		<p id="Propagation"> <b>Propagation Speed 2 x 10 <sup>8</sup> m/sec</b></p>
		<br>
		<button onclick="window.location.href='/'">
			<b>Back</b>
		</button>

	</div>
</body>
<script>
	

	function move() {
		/*  document.getElementById('time').innerHTML = h + ":" + m + ":" + s;
		  t = setTimeout(function() {
		    startTime()
		  }, 500); */
	
		//document.getElementById("myBtn").disabled = true;
		var length = document.getElementById("lengthvalue").innerHTML;
		console.log(length);
		document.getElementById("table").style.width = (length / 10) + '%';

		document.getElementById("bar").style.width = ((length / 10)) + '%';

		document.getElementById("rfav").style.width = 1 + '%';

		var leftSpace = 0;
		var elem = document.getElementById("myBar");
		var packetsize = document.getElementById("packetvalue").innerHTML;
		console.log(packetsize);
		var width = packetsize;
		var rate = document.getElementById("ratevalue").innerHTML;
		document.getElementById('time').style.marginLeft=(length / 10)/2+'%';
		document.getElementById('Propagation').style.marginLeft=((length / 10)/2)-5+'%';
		if(rate>500 && rate<=1050){
			rate=3000;
		}else if(rate>1050 && rate<=2050){
			rate=1500;
		}else{
			rate=500;
		}
		var l=0;
		var id = setInterval(frame, rate);
		console.log((length / 10));
		function frame() {
			

			if (leftSpace >= 100 - width) {
				
				 document.getElementById('time').innerHTML =l*1000 +'ms';
				 l++;
				console.log('if  ' + leftSpace);
				width -= 5;
				leftSpace += 5;
				elem.style.width = width + '%';
				elem.style.marginLeft = leftSpace + '%';
				console.log(width);
				if (width <= 0) {
					clearInterval(id);

				}
			} else {
				
				 document.getElementById('time').innerHTML =l*1000*0.0001 +'ms';
				 l++;
				console.log('else  ' + leftSpace)
				leftSpace += 5;
				elem.style.width= width + '%';
				elem.style.marginLeft = leftSpace + '%';

			}
		}
	}
</script>
</html>