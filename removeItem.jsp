<%@ page import="java.sql.*" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping_cart", "root", "1234");
        String query = "DELETE FROM cart_items WHERE id = ?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setInt(1, id);
        pstmt.executeUpdate();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

    response.sendRedirect("cart.jsp");
%>
