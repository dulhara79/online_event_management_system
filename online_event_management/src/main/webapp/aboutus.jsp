<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<!-- <!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>About Evora</title>
</head>
<body style="font-family: Arial, sans-serif; background-image: url('https://th.bing.com/th/id/OIP._iXpSgF_jjEhBMj9Bxy0NgHaEo?pid=ImgDet&w=474&h=296&rs=1'); background-size: cover; background-repeat: no-repeat; margin: 0; padding: 0;">
    <div style="max-width: 800px; margin: 0 auto; padding: 20px; background-color: rgba(255, 255, 255, 0.8); text-align: center;">
        <h1 style="text-align: center; margin-bottom: 20px; color: #333;">About Us</h1>
        <p style="line-height: 1.6; color: #555;">
            Evora is your premier destination for unforgettable experiences and memorable moments. We strive to revolutionize the way you create, share, and cherish memories. Our platform is designed to inspire, connect, and empower individuals to explore new horizons and embrace the extraordinary.
        </p>
        <p style="line-height: 1.6; color: #555;">
            Join us on this journey of discovery, where every moment is a story waiting to be told, and every memory is a treasure to be cherished.
        </p>
    </div>

</body>
</html> -->

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
</head>
<body>

<div class="about-section">
  <h1>About Us Page</h1>
  <p>Evora is your premier destination for unforgettable experiences and memorable moments. We strive to revolutionize the way you create, share, and cherish memories. Our platform is designed to inspire, connect, and empower individuals to explore new horizons and embrace the extraordinary.</p>
  <p>Join us on this journey of discovery, where every moment is a story waiting to be told, and every memory is a treasure to be cherished.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="/w3images/team1.jpg" alt="Dewdu" style="width:100%">
      <div class="container">
        <h2>Dewdu Sendanayake</h2>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="img/baby.jpg" alt="Uvindu" style="width:100%">
      <div class="container">
        <h2>Uvindu Seneviratne</h2>
       <!--  <p class="title">Art Director</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>mike@example.com</p>
        <p><button class="button">Contact</button></p> -->
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="/w3images/team3.jpg" alt="Dewmini" style="width:100%">
      <div class="container">
        <h2>Dewmini Navodya</h2>
      </div>
    </div>
  </div>
</div>

  <div class="column">
    <div class="card">
      <img src="/w3images/team3.jpg" alt="Dulhara" style="width:100%">
      <div class="container">
        <h2>Dulhara Kaushalya</h2>
      </div>
    </div>
  </div>
</div>

</body>
</html>

