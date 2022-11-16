<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registered</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>
</head>
<style>
.mybtn {
	margin-left: 800px;
}

.lgbtn {
	margin-left: 600px;
}

.footer {
	background: #1E1D23;
	margin-top: 100px;
}

.footer .footer-social a i {
	font-size: 1.5rem;
	color: #fff;
	padding: 0 1rem;
}

.footer .footer-social a:hover i {
	color: #FFC222;
}
</style>
<body>
	<%-- <h1>${Header }</h1>
	<p>${Desc }</p>
	<h1>Welcome, ${name }</h1>
	<h1>Your email address is: ${email }</h1>
	<h1>Your password is: ${user.password } try to secure it</h1> --%>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand text-info fw-bold">${Header }</a>
			<!-- <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button> -->
			<div class="collapse navbar-collapse px-5" id="navbarNav">
				<ul class="navbar-nav">
					<!-- <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li> -->
					<li class="nav-item"><a class="nav-link active fw-bold"
						href="#">Welcome, ${name }</a></li>
					<li class="nav-item"><a class="nav-link">${email }</a></li>
					<li class="nav-item">
						<form action="back" method="post">
							<button type="submit" class="lgbtn btn btn-info">Logout</button>
						</form>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="row pr-5 mx-5 px-5 pt-5">
		<div class="col-md-6 mx-5 px-5 ">
			<h2 class="text-info">
				<span class="label label-default">Triple DES Encryption</span>
			</h2>
			<form action="change" method="post">
				<div class="form-group mb-3  ">
					<label for="formGroupExampleInput" class="form-label fw-bold ">Plain
						Text</label> <input type="text" class="form-control"
						id="formGroupExampleInput" name="text"
						placeholder="Enter the plain text here">
						<small>Secret key used here is <b>9mng65v8jf4lxn93nabf981m</b></small>
				</div>
				<div class="form-group col-md-12">
					<label class="col-sm-2"></label>
					<div class="col-sm-10">
						<button type="submit" class="btn btn-info">Encrypt Data</button>
					</div>
				</div>
				<div class="mb-3">
					<label for="formGroupExampleInput2" class="form-label fw-bold">Encrypted
						text</label>
					<textarea type="text" class="form-control"
						id="formGroupExampleInput2"
						placeholder="Encrypted text will display here" readonly="readonly">${enc }</textarea>
				</div>
			</form>
		</div>
	</div>
	<div class="row pr-5 mx-5 px-5 pt-5">
		<div class="col-md-6 mx-5 px-5 ">
			<h2 class="text-info">
				<span class="label label-default">Triple DES Decryption</span>
			</h2>
			<form action="notchange" method="post">
				<div class="form-group mb-3  ">
					<label for="formGroupExampleInput" class="form-label fw-bold ">Encrypted</label>
					<input type="text" class="form-control" id="formGroupExampleInput"
						name="text" placeholder="Enter the plain text here">
						<small>Secret key used here is <b>9mng65v8jf4lxn93nabf981m</b></small>
				</div>
				<div class="form-group col-md-12">
					<label class="col-sm-2"></label>
					<div class="col-sm-10">
						<button type="submit" class="btn btn-info">Decrypt Data</button>
					</div>
				</div>
				<div class="mb-3">
					<label for="formGroupExampleInput2" class="form-label fw-bold">Plain
						text</label>
					<textarea type="text" class="form-control"
						id="formGroupExampleInput2"
						placeholder="Encrypted text will display here" readonly="readonly">${dnc }</textarea>
				</div>
			</form>
		</div>
	</div>
	<footer id="footer">
		<div class="footer pt-5">
			<div class="container">
				<div class="row">
					<div class="col-md-6 text-center">
						<div class="footer-social pb-4 text-center">
							<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
								class="fab fa-twitter"></i></a> <a href="#"><i
								class="fab fa-youtube"></i></a> <a href="#"><i
								class="fab fa-dribbble"></i></a> <a href="#"><i
								class="fab fa-linkedin"></i></a> <a href="#"><i
								class="fab fa-instagram"></i></a>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="footer-copy">
							<div class="copy-right text-center pt-5">
								<p class="text-light">© All rights reserved.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>