<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wishlist</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            width: 60%;
            margin: 20px auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .header {
            text-align: left;
            margin-bottom: 20px;
            font-weight: bold;
            font-size: 1.5em;
        }

        .wishlist-item {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background: #fff;
        }

        .wishlist-item img {
            max-width: 100px;
            border-radius: 5px;
        }

        .wishlist-item-details {
            flex: 1;
            margin-left: 20px;
        }

        .wishlist-item-details h4 {
            margin: 0 0 10px;
        }

        .wishlist-item-price {
            font-size: 1.2em;
            font-weight: bold;
        }

        .price-details {
            text-align: right;
            margin-top: 20px;
        }

        .price-details p {
            margin: 5px 0;
        }

        .price-details .total-amount {
            font-size: 1.5em;
            font-weight: bold;
        }

        .checkout-btn {
            background: #27ae60;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            text-align: center;
            width: 100%;
            border-radius: 5px;
            margin-top: 20px;
        }
    </style>
    
</head>
<body>
    <div class="container" id="cart-container">
        <div class="header">Wishlist(<%= getWishlistItemCount() %>)</div>

        <% List<WishlistItem> wishlistItems = getWishlistItems(); %>
        <% if (wishlistItems.isEmpty()) { %>
            <div class="empty-cart-message">Your cart is empty.</div>
        <% } else { %>
            <% for (WishlistItem item : wishlistItems) { %>
                <div class="wishlist-item">
                    <img src="<%= item.getImageUrl() %>" alt="<%= item.getName() %>">
                    <div class="wishlist-item-details">
                        <h4><%= item.getName() %></h4>
                        <div class="wishlist-item-price">₹ <%= item.getPrice() %></div>
                    </div>
                </div>
            <% } %>
            <div class="price-details">
                <p>MRP Total: ₹ <span id="mrp-total"><%= getTotalAmount(wishlistItems) %></span></p>
                <p>MRP Discount: ₹ <span id="mrp-discount">0</span></p>
                <p class="total-amount">Total Amount: ₹ <span id="total-amount"><%= getTotalAmount(wishlistItems) %></span></p>
            </div>
            <button class="checkout-btn" onclick="continueToCheckout()">Continue To Payment</button>
            <button class="checkout-btn" onclick="goToHomePage()">Go To Home Page</button>
        <% } %>
    </div>
    <div class="empty-wishlist-message" id="empty-wishlist-message" style="display: none;">
        Your wishlist is empty.
    </div>

    <script>
        function continueToCheckout() {
        	window.location.href = "payment_page.html";
        }
        function goToHomePage() {
        	window.location.href = "main_page.html";
        }
    </script>
</body>
</html>

<%! 
    private List<WishlistItem> getWishlistItems() {
        List<WishlistItem> cartItems = new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping_cart", "root", "1234");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM wishlist_items");
            while (rs.next()) {
                WishlistItem item = new WishlistItem(
                    rs.getInt("id"),
                    rs.getString("name"),
                    rs.getString("image_url"),
                    rs.getInt("price"),
                    rs.getInt("quantity"),
                    rs.getString("delivery_date")
                );
                cartItems.add(item);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cartItems;
    }

    private int getWishlistItemCount() {
        return getWishlistItems().size();
    }

    private int getTotalAmount(List<WishlistItem> cartItems) {
        int total = 0;
        for (WishlistItem item : cartItems) {
            total += item.getPrice() * item.getQuantity();
        }
        return total;
    }

    public class WishlistItem {
        private int id;
        private String name;
        private String imageUrl;
        private int price;
        private int quantity;
        private String deliveryDate;

        public WishlistItem(int id, String name, String imageUrl, int price, int quantity, String deliveryDate) {
            this.id = id;
            this.name = name;
            this.imageUrl = imageUrl;
            this.price = price;
            this.quantity = quantity;
            this.deliveryDate = deliveryDate;
        }

        public int getId() { return id; }
        public String getName() { return name; }
        public String getImageUrl() { return imageUrl; }
        public int getPrice() { return price; }
        public int getQuantity() { return quantity; }
        public String getDeliveryDate() { return deliveryDate; }
    }
%>