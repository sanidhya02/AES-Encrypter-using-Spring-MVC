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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
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
	margin-left:800px;
}
.footer{
  background: #1E1D23;
    margin-top:100px;
  
} 
.footer .footer-social a i{
  font-size: 1.5rem;
  color:#fff;
  padding:0 1rem;
}
.footer .footer-social a:hover i{
  color:#FFC222;
}


</style>
</head>
<body>
	<%-- <h1>${Header }</h1>
	<p>${Desc }</p>
	<h1>Welcome, ${name }</h1>
	<h1>Your email address is: ${email }</h1>
	<h1>Your password is: ${user.password } try to secure it</h1> --%>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand text-info fw-bold" >EncryptBuddy</a>
    <!-- <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button> -->
    <div class="collapse navbar-collapse px-5" id="navbarNav">
      <ul class="navbar-nav">
        <!-- <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li> -->
        <li class="nav-item">
          <a class="nav-link active fw-bold" href="#">Welcome, ${name }</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" >${email }</a>
        </li>
        
        <li class="nav-item">
        <form action="route" method="post">
         <button type="submit" class="mybtn btn btn-info" >Login</button>
         </form>
        </li>
        
      </ul>
    </div>
  </div>
</nav>
<div class="container pb-5">
  <div class="row g-3 pt-3 pb-5">
    <div class="col-4">
      <div class="p-3  bg-light">
      <div class="text-center">
      <a class="fw-bold text-info ">AES Encryption</a> 
      </div>
       <ul class="pt-3 mx-4">
      <li>AES is a block cipher.</li>
      <li>The key size can be 128/192/256 bits.</li>
      <li>Encrypts data in blocks of 128 bits each.</li>
      <li>AES performs operations on bytes of data rather than in bits. </li>
    </ul>
      </div>
    </div>
    <div class="col-4">
     <div class="p-3  bg-light">
      <div class="text-center">
      <a class="fw-bold text-info ">Triple DES Encryption</a> 
      </div>
      <ul class="pt-3 mx-4">
      <li>It is a encryption technique which uses three instance of DES on same plain text</li>
      <li>It uses there different types of key choosing technique in first all used keys are different and in second two keys are same and one is different and in third all keys are same</li>
    </ul>
      </div>
    </div>
    <div class="col-4">
      <div class="p-3  bg-light">
      <div class="text-center">
      <a class="fw-bold text-info ">Base64 Encoder</a> 
      </div>
      <ul class="pt-3 mx-4">
      <li>Base 64 is an encoding scheme that converts binary data into text format so that encoded textual data can be easily transported over network un-corrupted and without any data loss</li>
      <li> Base64 is used commonly in a number of applications </li>
      
    </ul>
      </div>
    </div>
   
  </div>
</div>
<footer id="footer">
    <div class="footer pt-5">
      <div class="container">
        <div class="row">
          <div class="col-md-6 text-center">
            <div class="footer-social pb-4 text-center">
              <a href="#"><i class="fab fa-facebook-f"></i></a>
              <a href="#"><i class="fab fa-twitter"></i></a>
              <a href="#"><i class="fab fa-youtube"></i></a>
              <a href="#"><i class="fab fa-dribbble"></i></a>
              <a href="#"><i class="fab fa-linkedin"></i></a>
              <a href="#"><i class="fab fa-instagram"></i></a>
            </div>
          </div>
          <div class="col-sm-12">
            <div class="footer-copy">
              <div class="copy-right text-center pt-5">
                <p class="text-light">©  All rights reserved.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </footer>
</body>
</html>