<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payments</title>
<style>
    body {
       font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-image: url('https://png.pngtree.com/background/20210711/original/pngtree-red-atmospheric-lanterns-pig-year-exhibition-board-background-picture-image_1145540.jpg'); /* Specify the path to your image */
        background-size: cover; /* Ensure the image covers the entire background */
        background-repeat: no-repeat;
         height: 100vh;
    }
    
    h1 {
        text-align: center;
        margin-top: 20px;
        color: #fff; /* Change the text color to white */
        font-family: 'Comic Sans MS', cursive; /* Use Comic Sans font */
        font-size: 46px; /* Set the font size to 36 pixels */
        letter-spacing: 3px;
    }
    
    form {
        max-width: 500px;
        margin: 0 auto;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.7); /* White with 50% transparency */
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        font-family: 'Comic Sans MS', cursive;
        background-image: linear-gradient(to bottom, rgba(255, 0, 0, 0.2), rgba(255, 0, 0, 0.5)); /* Reddish gradient */
    }
    
    label {
        display: block;
        margin-bottom: 5px;
        color: #333;
    }
    
    input[type="text"] {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
        font-family: 'Comic Sans MS', cursive; /* Use Comic Sans font */
    }

    input[type="text"]::placeholder {
        color: #888; /* Placeholder color */
        font-family: 'Comic Sans MS', cursive; /* Use Comic Sans font */
    }
    
    input[type="submit"],
    button {
        width: 100%;
        padding: 10px;
        margin-top: 20px;
        background-color: #8B0000; /* Dark red color */
        color: #fff;
        border: none;
        border-radius: 3px;
        cursor: pointer;
        font-family: 'Comic Sans MS', cursive;
        transition: background-color 0.3s, box-shadow 0.3s; /* Smooth transition for background color and box shadow */
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Add shadow to the button */
    }
    
    input[type="submit"]:hover,
    button:hover {
        background-color: #B22222; /* Darken the color on hover */
        box-shadow: 0 6px 10px rgba(0, 0, 0, 0.2); /* Adjust shadow on hover */
    }
    
    button {
        background-image: linear-gradient(to bottom, black, yellow, red, black);
        margin-top: 50px; /* Move the button lower */
        padding: 20px;
        width: 100%;
        margin-bottom: 50px;
        color: black;
    }
</style>
</head>
<body>
    <h1>Payment Form</h1>
    <form action="process-payment.jsp" method="post">
    
		<label for="name">Name on Card</label>
        <input type="text" id="name" name="name" placeholder="Enter the name on your card" required>

        <label for="address">Billing Address</label>
        <input type="text" id="address" name="address" placeholder="Enter your billing address" required>
		    
        <label for="cardNumber">Card Number</label>
        <input type="text" id="cardNumber" name="cardNumber" placeholder="Enter your card number" required pattern="\d{16}">
        
        <label for="expiryDate">Expiration Date</label>
        <input type="text" id="expiryDate" name="expiryDate" placeholder="MM/YY" required>
        
        <label for="cvv">CVV</label>
        <input type="text" id="cvv" name="cvv" placeholder="CVV" required>
        
        <input type="submit" value="Pay Now">
    </form>
    <button onclick="goBack()">Go Back</button>

    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</body>
</html>
