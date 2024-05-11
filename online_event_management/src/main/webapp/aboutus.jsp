<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
  margin-bottom: 10px;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 25%; /* Changed to 25% to fit four columns in one row */
  margin-bottom: 16px;
  padding: 0 8px;
}

.container h2 {
  color: black;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.5);
  margin: 8px;
  height: 350px; /* Set a fixed height for all cards */
  display: flex;
  flex-direction: column;
  transition: transform 0.2s; /* Add a transition effect */
  background-color: rgba(255, 255, 255, 0.9); /* Adjust the alpha value (0.7) for transparency */
}

.card:hover {
  transform: translateY(-5px); /* Move the card 5px up when hovered over */
}

.card img {
  height: 100%; /* Ensure images fill the height of the card */
  object-fit: cover;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
  background-image: url('https://c4.wallpaperflare.com/wallpaper/409/354/450/line-waves-light-colorful-wallpaper-preview.jpg');
  font-family: "Comic Sans MS", cursive; /* Set the font to Comic Sans */
}

/* Styling for the "Our Team" section */
.team-section {
  padding: 50px;
  text-align: center;
  background-image: url('https://cdn.wallpapersafari.com/83/62/Ov43f2.jpg'); /* Add your background image URL here */
  background-size: cover;
  color: white;
  font-family: "Comic Sans MS", cursive;
}

.team-heading {
  color: black;
  font-size: 56px;
  text-align: center;
  margin-top: 0px;
}


.container {
  padding: 0 16px;
  text-align: center; /* Center the text */
  margin: auto; /* Center the container horizontally */
  font-family: "Comic Sans MS", cursive; /* Set the font to Comic Sans */
  transition: transform 0.2s; /* Add a transition effect */
}

.container:hover {
  transform: translateY(-5px); /* Move the container 5px up when hovered over */
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

<div class="team-section">
<h2 class="team-heading" style="text-align:center">Our Team</h2>
<div class="row">

<div class="column">
    <div class="card">
        <img src="img/Dewduuu.jpg" alt="Dewdu" style="width:100%">
        <div class="container">
            <h2>Dewdu Sendanayake</h2>
        </div>
    </div>
</div>


  <div class="column">
    <div class="card">
      <img src="img/Uvinduu.jpg" alt="Uvindu" style="width:100%">
      <div class="container">
        <h2>Uvindu Seneviratne</h2>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="img/Dewminii.jpg" alt="Dewmini" style="width:100%">
      <div class="container">
        <h2>Dewmini Navodya</h2>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="img/Dulhara.jpg" alt="Dulhara" style="width:100%">
      <div class="container">
        <h2>Dulhara Kaushalya</h2>
      </div>
    </div>
  </div>
</div>
</div>

</body>
</html>
