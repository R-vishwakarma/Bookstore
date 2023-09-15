<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>online payment</title>
<style>
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.2);
}
</style>



<script>
	function validatePaymentForm() {
		var cardNumber = document.getElementById("cardNumber").value;
		var cardName = document.getElementById("cardName").value;
		var expirationDate = document.getElementById("expirationDate").value;
		var cvv = document.getElementById("cvv").value;

		if (cardNumber.length !== 16 || !/^\d+$/.test(cardNumber)) {
			alert("Please enter a valid 16-digit card number.");
			return false;
		}

		if (!cardName.match(/^[a-zA-Z\s]+$/)) {
			alert("Please enter a valid cardholder name.");
			return false;
		}

		if (!expirationDate.match(/^\d{2}\/\d{2}$/)) {
			alert("Please enter a valid expiration date in MM/YY format.");
			return false;
		}

		if (!cvv.match(/^\d{3}$/)) {
			alert("Please enter a valid 3-digit CVV number.");
			return false;
		}

		// Additional checks and processing would be done here.

		return true; // Form is valid
	}
</script>
<%@include file="all-Component/all-css.jsp"%>
</head>
<body>
	<%@include file="all-Component/navbar.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="card paint-card">
					<div class="card-body">

						<div class="row">
							<div class="col-md-8 text-center">
								<h4 class="fs-4 text-center  text-dark">Card Payment</h4>
							</div>
							<div class="col-md-4">
								<h4>
									<img src="img/visa.png" style="height: 40px; width: 50px;">
									<img src="img/master.png" style="height: 40px; width: 50px;">
									<img src="img/Rupay.png" style="height: 40px; width: 50px;">
								</h4>
							</div>
						</div>
						<form action="order_success.jsp" method="post"
							onsubmit="return validatePaymentForm()">
							<div class="md-4 mt-4"></div>
							<label for="cardNumber">Card Number:
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label> <input type="text"
								id="cardNumber" name="cardNumber" pattern="[4-8]{4}[]" placeholder="**** **** **** ****" required><br>
							<div class="md-4 mt-3">
								<label for="cardName">Cardholder Name:&nbsp;</label> <input
									type="text" id="cardName" name="cardName" required>
							</div>
							<br>
							<div class="md-4">
								<label for="expirationDate">Expiration Date
									:&nbsp;&nbsp;&nbsp;&nbsp;</label> <input type="text"
									id="expirationDate" name="expirationDate" placeholder="MM/YY"
									required>
							</div>
							<br>
							<div class="md-4">
								<label for="cvv">CVV: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
								<input type="text" id="cvv" name="cvv" placeholder="***" required>
							</div>
							<br>
							<div class="col-md-12 text-center text-secondary">
								<input type="submit" value="Make Payment">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="p-5">
	<%@include file="all-Component/footer.jsp"%></div>
</body>
</html>