<!DOCTYPE html>
<html>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 40%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 40%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: center;
  width: 20%;
  margin: 0 80px;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 100px) {
  .cancelbtn, .signupbtn {
     width: 40%;
  }
}
</style>
<style> html, body {background-color: #b3daff; } </style>
<body>

	<center>
		<form method="post" style="border:1px solid #ccc">
	@csrf
  <div class="container">
    <h1>Sign Up</h1>
    <hr>
    <label for="email"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="name" required><br/>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required><br/>

    <div class="clearfix">
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>
</form>
	<div>{{session('message')}}</div>
	</center>


</body>
</html>


<!-- 
		<form method="post">
			@csrf
		</form>
		<div>{{session('message')}}</div>
</body>
</html> -->