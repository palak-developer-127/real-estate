<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<!DOCTYPE html>
<html>

<head>
	<style>
		/*style.css*/
		body {
			display: flex;
			align-items: center;
			justify-content: center;
			font-family: sans-serif;
			line-height: 1.5;
			min-height: 100vh;
			background: #f3f3f3;
			flex-direction: column;
			margin: 0;
		}

		.main {
			background-color: #fff;
			border-radius: 15px;
			box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
			padding: 10px 20px;
			transition: transform 0.2s;
			width: 500px;
			text-align: center;
		}

		h1 {
			color: #4CAF50;
		}

		label {
			display: block;
			width: 100%;
			margin-top: 10px;
			margin-bottom: 5px;
			text-align: left;
			color: #555;
			font-weight: bold;
		}


		input {
			display: block;
			width: 100%;
			margin-bottom: 15px;
			padding: 10px;
			box-sizing: border-box;
			border: 1px solid #ddd;
			border-radius: 5px;
		}

		button {
			padding: 15px;
			border-radius: 10px;
			margin-top: 15px;
			margin-bottom: 15px;
			border: none;
			color: white;
			cursor: pointer;
			background-color: #4CAF50;
			width: 100%;
			font-size: 16px;
		}

		.wrap {
			display: flex;
			justify-content: center;
			align-items: center;
		}
	</style>
	<title>Wellcare Bill Payment</title>
	<link rel="stylesheet" href="style.css">
</head>

<body>
	<div class="main">
		<h1>Payment process</h1>
		<h3>Enter your Details</h3>
		<form action="">
			<input type="text" name="name" placeholder="Name *" id="name"><br><br>
			<input type="text" name="e-mail" placeholder="E-mail *" id="E-mail"><br><br>
			<input type="text" name="mobile number" placeholder="Mobile Number *" id="Mobile Numbeer"><br><br>
			<input type="text" name="amount" placeholder="Amount *" id="amount"><br><br>
			<input type="button" name="button" value="Pay now" onclick="MakePayment()"><br><br>
		</form>
		<script>
			function MakePayment() {
				var name = $("#name").val();
				var amount = $("#amount").val();
				var options = {
					"key": "rzp_test_Eq73cngWXqGsHb", // Enter the Key ID generated from the Dashboard
					"amount": amount *
						100, // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
					"currency": "INR",
					"name": name, //your business name
					"description": "Test Transaction",
					"image": "logo.png",
					//"order_id": "order_9A33XWu170gUtm", //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
					"handler": function (response) {
						jQuery.ajax({
							type: "POST",
							url: "payment.php",
							data: "pay_id=" + response.razorpay_payment_id + "&amount=" + amount + "&name" +
								name,
							success: function (result) {
								window.location.href = "success.php";
							}
						})
					}
				};
				var rzp1 = new Razorpay(options);
				rzp1.open();
			}
		</script>