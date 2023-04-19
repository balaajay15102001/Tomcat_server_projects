<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
    body{
      font-family: Calibri;
      background-color:#E6E6FA ;
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
<h3>
<fieldset>
<legend>Student Registration:</legend>
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
</fieldset>
</h3>
<h3>
<fieldset>
<legend>Please select your Options:</legend>
<div id="options">
   <input type="radio" value="INSERT" name="options">
   <label>Insert</label>
   <input type="radio" value="READ" name="options">
   <label>Read</label>
   <input type="radio" value="UPDATE" name="options">
   <label>Update</label>
   <input type="radio" value="DELETE" name="options">
   <label>Delete</label>
  </fieldset>
</h3>
  </div>
<button type="submit" class="registerbtn">Register</button>
</form>
</body>
</html>