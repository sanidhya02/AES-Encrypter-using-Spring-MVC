<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<style>
.mybtn {
	width: 600px;
}
.lgbtn
{
margin-left:600px;
}

.first {
	margin-top: 100px
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
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light ">
		<div class="container-fluid">
			<a class="navbar-brand text-info fw-bold">${Header }</a>
			<!-- <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button> -->
			<div class="collapse navbar-collapse px-5" id="navbarNav">
				<ul class="navbar-nav">
					<!-- <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>  -->
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


	<div
		class="d-grid gap-3  first  col-8 mx-auto  pt-3 justify-content-center ">
		<label for="formGroupExampleInput"
			class="form-label text-center text-primary  fw-bold "><h3>Choose
				the method from options given</h3></label> <label for="formGroupExampleInput"
			class="form-label fw-bold "><h5>ENCRYPTER</h5></label>
		<form action="advanced" method="post">
			<button class="mybtn btn   btn-info  fw-bold">Advanced
				Encryption Standard</button>
		</form>
		<form action="triple" method="post">
			<button class="mybtn btn  btn-info  fw-bold">3DES</button>
		</form>
		<label for="formGroupExampleInput" class="form-label fw-bold "><h5>ENCODER</h5></label>
		<form action="decoder" method="post">
			<button class="mybtn btn btn-info fw-bold">Base64
				(Encode/Decoder)</button>
		</form>
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

</body>
</html>