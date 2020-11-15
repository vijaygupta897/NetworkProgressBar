<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


</head>
<script>
	var lcounter = 1;
	var rcounter = 1;
	var pcounter = 1;

	function addList(id) {

		var select = document.getElementById(id);

		addvalues(select, id);

	}

	function addvalues(select, type) {
		var i = 0;
		if (type == 'length' && lcounter == 1) {
			console.log("check")
			i = 100;
			addoption(i, 1000, 100, select);
			lcounter--;

		} else if (type == 'rate' && rcounter == 1) {
			i = 0;
			addoption(i, 3000, 512, select);
			rcounter--
		} else if (type == 'packet' && pcounter == 1) {
			i = 10;
			addoption(i, 100, 5, select);
			pcounter--;
		}

	}

	function addoption(init, max, inc, select) {
		for (var i = init; i <= max; i = i + inc) {
			var option = document.createElement('option');

			option.text = option.value = i;

			select.add(option, 0);
		}

	}

	function resetValues() {

		document.getElementById("length").innerHtml = '0';
		document.getElementById("rate").innerHtml = '0';
		document.getElementById("packet").innerHtml = '0';

	}
</script>

<body>
	<div class="w3-container" style="margin-top: 5%; margin-left: 30%;">
		<div style="padding-top: 10%">
			<h2>Dynamic Progress Bar with Labels</h2>
			<p>Centered label:</p>
			<table>
				<tr>
					<td>

						<form action="/showresult" method="post">
							<table>
								<tr>

									<td><b>Length</b></td>
									<td><select id="length" name="length"
										onclick="addList('length')" required>
											<option value="0">0</option>
									</select></td>
									<td>km   </td>
									<td><b>Rate</b></td>

									<td><select id="rate" name="rate"
										onclick="addList('rate')" required>
											<option value="0">0</option>

									</select></td>
									<td>Kbps   </td>
									<td><b>Packet size</b></td>

									<td><select id="packet" name="packet"
										onclick="addList('packet')" required>
											<option value="0">0</option>
									</select></td>
									<td>Bytes</td>
								

								
									<td style="margin: 0% ; padding:0%"><button class="w3-button w3-green" style="margin-left: 15%; margin-bottom: 7%">Proceed</button></td>
									
								</tr>
							</table>
						</form>
					</td>

					<td>
					<br>
						<form>
							<button class="w3-button w3-green" onclick="resetValues()" style="margin-left:30%; margin-bottom: 38%">Reset</button>
						</form>
					</td>
				</tr>
			</table>

		</div>
	</div>


</body>
</html>