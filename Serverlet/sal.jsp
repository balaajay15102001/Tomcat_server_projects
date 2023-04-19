<html>
<body>
 <style>
    body{
      font-family: Calibri;
      background-color: pink;
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
    form{
      padding: 10px 0;
    }
    hr {
      border: 1px solid #726E6D;
      margin-bottom: 25px;
    }
    .registerbtn {
      background-color:green;
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
<form action="sal_calc">
<h2>
    <label> Name </label><br>
    <input type="text" name="name" placeholder= "name" size="15" required /><br>
    <label> Your Monthly Salary </label><br>
    <input type="text" name="month_sal" placeholder= "Enter your monthly salary" size="15" required /><br>
    <label>How many days you have worked</label><br>
    <input type="text" name="present" placeholder="worked" size="15" required><br>
<button type="submit" class="registerbtn">calculate</button>
</h2>
</form>
</body>
</html>
