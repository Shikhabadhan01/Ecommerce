<%@ page import="java.sql.*" %>
<%@ page import="com.electroshop.db.DBConnection" %>

<%
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
<%
        } else {
%>
            <h2>Order Failed!</h2>
            <p>Something went wrong. Please try again later.</p>
<%
        }
    } catch (SQLException e) {
        out.println("<h2>Error: " + e.getMessage() + "</h2>");
    } finally {
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    }
%>
