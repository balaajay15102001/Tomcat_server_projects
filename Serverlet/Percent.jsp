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
      background-color:#E6E6FA;
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
<form action="percent">
  <div class="container">
    <h1>Registration Form</h1> </center>
    <hr>
    <label> Roll no </label>
    <input type="text" name="roll" placeholder= "Enter your Roll no" size="15" required />
    <label> Name </label>
    <input type="text" name="name" placeholder= "name" size="15" required />
    <label> Class </label>
    <input type="text" name="class" placeholder= "Enter your class" size="15" required />
    <p>
    <label>Total Marks</label>
    <input type="text" placeholder="Enter your Total Marks" name="total" required>
    </p>
     <label>Total Subject</label>
    <input type="text" placeholder="Enter your Total number of Subject" name="total_subject" required>
    </br>
    <button type="submit" class="registerbtn">Calculate</button>
  </div>
</form>
</body>
</html>