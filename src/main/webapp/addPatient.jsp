<!DOCTYPE html>
<html>
<head>
  <title>Add Patient</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f4f4f4;
    }
    .container {
      width: 400px;
      margin: 50px auto;
      background: #fff;
      padding: 20px;
      border-radius: 10px;
    }
    input, select {
      width: 100%;
      padding: 10px;
      margin: 8px 0;
    }
    button {
      background: #4CAF50;
      color: #fff;
      border: none;
      padding: 10px;
      cursor: pointer;
      width: 100%;
      border-radius: 5px;
    }
    button:hover { background: #45a049; }
  </style>
</head>
<body>
  <div class="container">
    <h2>Patient Registration</h2>
    <form action="AddPatientServlet" method="post">
      <input type="text" name="full_name" placeholder="Full Name" required />
      <select name="gender" required>
        <option value="">Select Gender</option>
        <option>Male</option>
        <option>Female</option>
      </select>
      <input type="number" name="age" placeholder="Age" required />
      <input type="text" name="address" placeholder="Address" required />
      <input type="text" name="contact_number" placeholder="Contact Number" required />
      <input type="email" name="email" placeholder="Email" required />
      <button type="submit">Register Patient</button>
    </form>
  </div>
</body>
</html>
