<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.electroshop.db.DBConnection" %>

<%
    // Retrieve form data
    String product = request.getParameter("product");
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");

    Connection conn = null;
    PreparedStatement stmt = null;

    try {
        conn = DBConnection.getConnection();
        String sql = "INSERT INTO Orders (product, name, address, email, phone) VALUES (?, ?, ?, ?, ?)";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, product);
        stmt.setString(2, name);
        stmt.setString(3, address);
        stmt.setString(4, email);
        stmt.setString(5, phone);

        int rowsInserted = stmt.executeUpdate();
        if (rowsInserted > 0) {
%>
            <h2>Order Placed Successfully!</h2>
            <p>Thank you, <%= name %>. Your order for <%= product %> has been placed.</p>
            <p><a href="index.html" style="color: #00f; text-decoration: underline;">Go to Home Page</a></p>
<%
        } else {
%>
            <h2>Order Failed!</h2>
            <p>Something went wrong. Please try again later.</p>
            <p><a href="index.html" style="color: #00f; text-decoration: underline;">Go to Home Page</a></p>
<%
        }
    } catch (SQLException e) {
        out.println("<h2>Error: " + e.getMessage() + "</h2>");
        out.println("<p><a href='index.html' style='color: #00f; text-decoration: underline;'>Go to Home Page</a></p>");
    } finally {
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    }
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ElectroShop - Order</title>
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
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background-color: #222;
            border-radius: 10px;
        }
        .form-group {
            margin: 15px 0;
        }
        label, select, input {
            display: block;
            width: 96%;
            margin-top: 5px;
            padding: 10px;
            border-radius: 5px;
        }
        button {
            background-color: #fff;
            color: #000;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <header>ElectroShop</header>
    <nav>
        <a href="index.html">Home</a>
        <a href="categories.jsp">Categories</a>
        <a href="order.jsp">Order</a>
        <a href="contact.jsp">Contact</a>
    </nav>
    <div class="content">
        <h2>Place Your Order</h2>
        <form action="orderConfirmation.jsp" method="post">
            <div class="form-group">
                <label for="product">Select Product:</label>
                <select id="product" name="product">
                    <option value="Wireless Headphones">Wireless Headphones</option>
                    <option value="Wired Headphones">Wired Headphones</option>
                    <option value="Gaming Laptop">Gaming Laptop</option>
                    <option value="Ultrabook">Ultrabook</option>
                    <option value="Android Mobile">Android Mobile</option>
                    <option value="iPhone">iPhone</option>
                    <option value="Smart TV">Smart TV</option>
                    <option value="LED TV">LED TV</option>
                </select>
            </div>
            <div class="form-group">
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="address">Shipping Address:</label>
                <input type="text" id="address" name="address" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" required>
            </div>
            <button type="submit">Place Order</button>
        </form>
    </div>
</body>
</html>
