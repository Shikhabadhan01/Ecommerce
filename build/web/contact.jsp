<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ElectroShop - Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #000;
            color: #fff;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        header {
            background-color: #111;
            padding: 20px;
            font-size: 24px;
            font-weight: bold;
        }
        nav {
            background-color: #222;
            padding: 10px;
        }
        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 15px;
        }
        .content {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #222;
            border-radius: 10px;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        input, textarea {
            margin: 10px 0;
            padding: 10px;
            border: none;
            border-radius: 5px;
        }
        button {
            background-color: #fff;
            color: #000;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #ccc;
        }
    </style>
</head>
<body>
    <header>ElectroShop</header>
    <nav>
        <a href="index.html">Home</a>
        <a href="categories.jsp">Categories</a>
        <a href="about.jsp">About</a>
        <a href="contact.jsp">Contact</a>
    </nav>
    <div class="content">
        <h2>Contact Us</h2>
        <p>Have questions or need assistance? Reach out to us!</p>
        <form action="#" method="post">
            <input type="text" name="name" placeholder="Your Name" required>
            <input type="email" name="email" placeholder="Your Email" required>
            <textarea name="message" placeholder="Your Message" rows="5" required></textarea>
            <button type="submit">Send Message</button>
        </form>
    </div>
</body>
</html>