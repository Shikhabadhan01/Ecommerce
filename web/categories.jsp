<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ElectroShop - Categories</title>
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
        .categories {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            padding: 20px;
        }
        .category {
            background-color: #333;
            margin: 15px;
            padding: 20px;
            border-radius: 5px;
            width: 200px;
            position: relative;
        }
        .category img{
            width: 200px;
            height: 150px;
            object-fit: cover;
            border-radius: 5px;
        }        
        .dropdown {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background-color: #444;
            width: 100%;
            border-radius: 5px;
        }
        .dropdown a {
            display: block;
            color: white;
            padding: 10px;
            text-decoration: none;
        }
        .dropdown a:hover {
            background-color: #555;
        }
        .category:hover .dropdown {
            display: block;
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
    <div class="categories">
        <div class="category">
            <img src="images/earphone.jpg" alt="Headphones">
            <div class="dropdown">
                <a href="heaphones.jsp?category=headphones">Wireless</a>
                <a href="heaphones.jsp?category=headphones">Wired</a>
            </div>
        </div>
        <div class="category">
            <img src="images/laptop.jpg" alt="Laptops">
            <div class="dropdown">
                <a href="laptop.jsp?category=laptops">Gaming</a>
                <a href="laptop.jsp?category=laptops">Ultrabook</a>
            </div>
        </div>
        <div class="category">
            <img src="images/mobile.jpg" alt="Mobiles">
            <div class="dropdown">
                <a href="mobiles.jsp?category=mobiles">Android</a>
                <a href="mobiles.jsp?category=mobiles">iPhone</a>
            </div>
        </div>
        <div class="category">
            <img src="images/tv.jpg" alt="Televisions">
            <div class="dropdown">
                <a href="televisions.jsp?category=televisions">Smart TV</a>
                <a href="televisions.jsp?category=televisions">LED</a>
            </div>
        </div>
    </div>
</body>
</html>