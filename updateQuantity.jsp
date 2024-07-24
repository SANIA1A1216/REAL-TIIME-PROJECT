<%@ page import="java.sql.*" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    int quantity = Integer.parseInt(request.getParameter("quantity"));

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping_cart", "root", "1234");
        String query = "UPDATE cart_items SET quantity = ? WHERE id = ?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setInt(1, quantity);
        pstmt.setInt(2, id);
        pstmt.executeUpdate();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

    response.sendRedirect("cart.jsp");
%>
