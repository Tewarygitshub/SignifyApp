<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <title>Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #002e5d;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            width: 65%;
            background-color: #b3e5fc;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-left: 200px;
        }
        .sidebar {
    width: 250px;
    background-color: #12264a;
    color: #fff;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding-top: 20px;
    height: 100vh; /* Ensures the sidebar covers the full viewport height */
    position: fixed; /* Keeps the sidebar fixed in place */
    top: 0;
    left: 0;
}

.sidebar .logo {
    font-size: 30px;
    color: #fff;
    margin-bottom: 20px;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding-top: 20px;
}

.logo img.logo-image {
    width: 50px;
    height: 50px;
    border-radius: 50%;
    margin-top: 10px;
    object-fit: cover;
}

.sidebar nav ul {
    list-style-type: none;
    padding: 0;
    width: 100%;
    text-align: center;
}

.sidebar nav ul li {
    margin: 20px 0;
}

.sidebar nav ul li a {
    color: #fff;
    text-decoration: none;
    font-size: 20px;
}


.bottom-image {
    position: fixed; /* Fixes the position */
        bottom: 20px; /* Adjust the distance from the bottom */
        padding: 20px 0; /* Padding if needed */
}

.bottom-image img.bottom-image-img {
    width: 250px;
        display: flex; /* Enable Flexbox */
        flex-direction: column; /* Align content vertically */
        justify-content: flex-end;
        padding: 5px;
}
        .header {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        .header .card {
            background-color: white;
            padding: 15px;
            border-radius: 8px;
            text-align: center;
            width: 22%;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .header .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
        }
        .header .card h4 {
            margin: 10px 0;
            color: #002e5d;
        }
        .header .card p {
            margin: 5px 0;
            color: #555;
            font-size: 14px;
        }
        .form-container {
            background-color: #e0f7fa;
            padding: 20px;
            border-radius: 8px;
        }
        h2 {
            text-align: center;
            color: #002e5d;
            margin-bottom: 20px;
        }
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        input, textarea, button {
            padding: 10px;
            border: 1px solid #90caf9;
            border-radius: 5px;
        }
        button {
            background-color: #00796b;
            color: white;
            cursor: pointer;
        }
        button:hover {
            background-color: #004d40;
        }
    </style>
</head>
<body>
    <aside class="sidebar">
        <div class="logo">
            <h3>Signify</h3>
            <img src="A_images/Sig-.png" alt="Logo Image" class="logo-image">

        </div>
        <nav>
            <ul>
                <li><a href="dashboard.html"><i class="fas fa-user"></i></a></li>
                <li><a href="sign1.html"><i class="fas fa-book-open"></i></a></li>
                <li><a href="about_us"><i class="fas fa-calendar-alt"></i></a></li>
                <li><a href="#"><i class="fas fa-cog"></i></a></li>
            </ul>
        </nav>
        <div class="bottom-image">
            <img src="A_images/image_processing20210620-27756-zsfljb.png" alt="Bottom Image" class="bottom-image-img">
        </div>
    </aside>
    <div class="container">
        <div class="header">
            <div class="card">
                <h4>ADDRESS</h4>
                <p>Asansol Engineering College</p>
            </div>
            <div class="card">
                <h4>PHONE NUMBER</h4>
                <p>8340381696<br>9339395495</p>
            </div>
            <div class="card">
                <h4>LINKEDIN ID</h4>
                <a href="https://www.linkedin.com/in/sourav-tewary-a44484275" target="_blank">https://www.linkedin.com/in/sourav-tewary-a44484275</a>

            </div>
            <div class="card">
                <h4>EMAIL</h4>
                <a href="aec.cse.souravtewary@gmail.com" target="_blank">aec.cse.souravtewary@gmail.com</a>

            </div>
        </div>
        <div class="form-container">
            <h2>Contact Us</h2>
            <form>
                <input type="text" placeholder="Enter your Name" required>
                <input type="email" placeholder="Enter a valid email address" required>
                <textarea placeholder="Enter your message" rows="5" required></textarea>
                <button type="submit">Submit</button>
            </form>
        </div>
    </div>
</body>
</html>