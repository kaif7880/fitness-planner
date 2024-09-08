<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <!-- <link rel="stylesheet" href="login.css"> -->
     <link rel="stylesheet" href="style.css">
     <style>
        body {
           background-image: url(blacbac.png);
            background-size: cover;
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>
<div class="main-content">
       <!-- <div id="reg"> <h1>Register</h1></div>
    <form action="register.php" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>
        <label for="contact">Contact Number:</label>
        <input type="tel" id="contact" name="contact" required><br><br>
        <label for="gender">Gender:</label>
        <select id="gender" name="gender" required>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
        </select><br><br>
        <label for="height">Height (cm):</label>
        <input type="number" id="height" name="height" required><br><br>
        <label for="weight">Weight (kg):</label>
        <input type="number" id="weight" name="weight" required><br><br>
        <input id="btn" type="submit" value="Register">
    </form></div> -->
    <!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Responsive Registration Form</title>
    <meta name="viewport" content="width=device-width,
      initial-scale=1.0"/>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="container">
      <h1 class="form-title">Registration</h1>
      <form action="#">
        <div class="main-user-info">
          <div class="user-input-box">
            <label for="fullName">Full Name</label>
            <input type="text"
                    id="fullName"
                    name="fullName"
                    placeholder="Enter Full Name"/>
          </div>
          <div class="user-input-box">
            <label for="username">Username</label>
            <input type="text"
                    id="username"
                    name="username"
                    placeholder="Enter Username"/>
          </div>
          <div class="user-input-box">
            <label for="email">Email</label>
            <input type="email"
                    id="email"
                    name="email"
                    placeholder="Enter Email"/>
          </div>
          <div class="user-input-box">
            <label for="phoneNumber">Phone Number</label>
            <input type="text"
                    id="phoneNumber"
                    name="phoneNumber"
                    placeholder="Enter Phone Number"/>
          </div>
          <div class="user-input-box">
            <label for="password">Password</label>
            <input type="password"
                    id="password"
                    name="password"
                    placeholder="Enter Password"/>
          </div>
          <div class="user-input-box">
            <label for="confirmPassword">Confirm Password</label>
            <input type="password"
                    id="confirmPassword"
                    name="confirmPassword"
                    placeholder="Confirm Password"/>
          </div>
        </div>
        <div class="gender-details-box">
          <span class="gender-title">Gender</span>
          <div class="gender-category">
            <input type="radio" name="gender" id="male">
            <label for="male">Male</label>
            <input type="radio" name="gender" id="female">
            <label for="female">Female</label>
            <input type="radio" name="gender" id="other">
            <label for="other">Other</label>
          </div>
        </div>
        <div class="main-user-info">
          <div class="user-input-box">
            <label for="height">Height</label>
            <input type="text"
                    id="height"
                    name="height"
                    placeholder="Enter Full Height"/>
          </div>
          <div class="user-input-box">
            <label for="weight">Weight</label>
            <input type="text"
                    id="weight"
                    name="weight"
                    placeholder="Enter Your Weight"/>
          </div>
    
        <div class="form-submit-btn">
          <input type="submit" value="Register">
        </div>
      </form>
    </div>
  </body>
</html>

    <?php
    include 'db_connect.php';

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $username = $_POST['username'];
        $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
        $email = $_POST['email'];
        $contact = $_POST['contact'];
        $gender = $_POST['gender'];
        $height = $_POST['height'];
        $weight = $_POST['weight'];

        // Use prepared statements to prevent SQL injection
        $stmt = $conn->prepare("INSERT INTO user (username, password, email, contact, gender, height, weight) VALUES (?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("sssssis", $username, $password, $email, $contact, $gender, $height, $weight);
// insert a dummy record
        if ($stmt->execute()) {
            // Redirect to home page after successful registration
            header("Location: home.php");
            exit();
        } else {
            echo "Error: " . $stmt->error;
        }

        $stmt->close();
        $conn->close();
    }
    ?>
</body>
</html>
