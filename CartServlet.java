package BabyBloom;


import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productName = request.getParameter("productName");
        String productPrice = request.getParameter("productPrice");
        
        String productImage = request.getParameter("productImageUrl");// example image URL
        int quantity = 1; // default quantity
        String deliveryDate = request.getParameter("productEstDel"); // example delivery date

        try (Connection conn = DatabaseConnection.getConnection()) {
            String sql = "INSERT INTO cart_items (name, image_url, price, quantity, delivery_date) VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement stmt1 = conn.prepareStatement(sql)) {
                stmt1.setString(1, productName);
                stmt1.setString(2, productImage);
                stmt1.setInt(3, Integer.parseInt(productPrice));
                stmt1.setInt(4, quantity);
                stmt1.setString(5, deliveryDate);
                stmt1.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Redirect to cart.jsp
        response.sendRedirect("cart.jsp");
    }
}
