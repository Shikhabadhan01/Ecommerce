<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ElectroShop - Laptops</title>
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
        .products {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            padding: 20px;
        }
        .product {
            background-color: #333;
            margin: 15px;
            padding: 20px;
            border-radius: 5px;
            width: 250px;
            text-align: center;
        }
        .product img {
            width: 220px;
            height: 150px;
            object-fit: cover;
            border-radius: 5px;
        }

        .product p {
            margin: 10px 0;
        }
        .buy-btn {
            background-color: #fff;
            color: #000;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 5px;
            display: inline-block;
            margin-top: 10px;
        }
        .buy-btn:hover {
            background-color: #ccc;
        }
    </style>
</head>
<body>
    <header>ElectroShop</header>
    <nav>
        <a href="index.Html">Home</a>
        <a href="categories.jsp">Categories</a>
        <a href="about.jsp">About</a>
        <a href="contact.jsp">Contact</a>
    </nav>
    <h2>Laptops</h2>
    <div class="products">
        <div class="product">
            <img src="images/gaming.jpg" alt="Gaming Laptop">
            <p>Gaming Laptop</p>
            <p>Price: 50,000 Rupees </p>
            <a href="order.jsp" class="buy-btn">Buy Now</a>
        </div>
        <div class="product">
            <img src="images/probook.jpg" alt="Ultrabook">
            <p>Ultrabook</p>
            <p>Price: 100000 Rupees </p>
            <a href="order.jsp" class="buy-btn">Buy Now</a>
        </div>
    </div>
</body>
</html>
