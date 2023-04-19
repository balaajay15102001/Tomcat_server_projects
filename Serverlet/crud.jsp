<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
    body{
      font-family: Calibri;
      background-color: violet;
    }
    .container {
      padding: 50px;
      background-color:#87CEEB;
    }

    input[type=text], input[type=password]{
      width: 100%;
      padding: 15px;
      margin: 5px 0 22px 0;
      display: inline-block;
      border: none;
      background: #f1f1f1;
    }
    input[type=text]:focus, input[type=password]:focus {
      background-color: orange;
      outline: none;
    }
    div {
      padding: 10px 0;
    }
    hr {
      border: 1px solid #726E6D;
      margin-bottom: 25px;
    }
    .registerbtn {
      background-color:#008000;
      color: white;
      padding: 16px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 100%;
      opacity: 0.9;
    }
    .registerbtn:hover {
      opacity: 1;
    }
  </style>
</head>
<body>
<form action="crud_operation">
  <div class="container">
    <h1>Registration Form</h1> </center>
    <hr>
    <label> Name </label>
    <input type="text" name="name" placeholder= "name" size="15" required />
    <label> DOB </label>
    <input type="text" name="DOB" placeholder= "dob" size="15" required />
    <label><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>
    <p>
    <label>Mobile</label>
    <input type="text" placeholder="Mobile no" name="mobile" size="15" required>
    </p>
<h3>
    <label for="crud">Choose your option:</label>
  <select id="crud" name="option">
  <option value="INSERT">INSERT</option>
  <option value="READ">READ</option>
  <option value="UPDATE">UPDATE</option>
  <option value="DELETE">DELETE</option>
</select>
</h3>
    <button type="submit" class="registerbtn">Register</button>
  </div>
</form>
</body>
</html>