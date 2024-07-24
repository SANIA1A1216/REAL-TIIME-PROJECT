<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <style>
        /* Include the same styles as before */
        /* ... */
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

        .pincode-check {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .pincode-check input {
            width: 150px;
            padding: 5px;
            margin-right: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .pincode-check button {
            background: #e91e63;
            color: #fff;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            border-radius: 5px;
        }

        .cart-item {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background: #fff;
        }

        .cart-item img {
            max-width: 100px;
            border-radius: 5px;
        }

        .cart-item-details {
            flex: 1;
            margin-left: 20px;
        }

        .cart-item-details h4 {
            margin: 0 0 10px;
        }

        .cart-item-details p {
            margin: 0;
            color: #777;
        }

        .cart-item-actions {
            display: flex;
            align-items: center;
        }

        .cart-item-actions button {
            background: #e91e63;
            color: #fff;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            margin: 0 5px;
            border-radius: 5px;
        }

        .cart-item-actions input {
            width: 50px;
            text-align: center;
            margin-right: 10px;
        }

        .cart-item-price {
            font-size: 1.2em;
            font-weight: bold;
        }

        .cart-item-remove {
            color: #e91e63;
            cursor: pointer;
            font-size: 0.9em;
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

        /* Modal Styles */
        .modal {
            display: none; 
            position: fixed; 
            z-index: 1; 
            left: 0;
            top: 0;
            width: 100%; 
            height: 100%; 
            overflow: auto; 
            background-color: rgb(0,0,0); 
            background-color: rgba(0,0,0,0.4); 
            padding-top: 60px; 
        }

        .modal-content {
            background-color: #fff;
            margin: 5% auto; 
            padding: 20px;
            border: 1px solid #888;
            width: 30%; 
            border-radius: 10px;
            text-align: center;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        .modal-footer {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .modal-footer button {
            padding: 10px 20px;
            margin: 0 10px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        .modal-footer .cancel-btn {
            background-color: #ccc;
            color: black;
        }

        .modal-footer .remove-btn {
            background-color: #e91e63;
            color: white;
        }

        .empty-cart-message {
            text-align: center;
            font-size: 1.2em;
            margin-top: 50px;
        }
    </style>
    
</head>
<body>
    <div class="container" id="cart-container">
        <div class="header">Shopping Cart (<%= getCartItemCount() %>)</div>
        <div class="pincode-check">
            <label for="pincode" style="margin-right: 10px;">Enter Delivery Pincode:</label>
            <input type="text" id="pincode" value="111001">
            <button onclick="checkPincode()">Check</button>
        </div>

        <% List<CartItem> cartItems = getCartItems(); %>
        <% if (cartItems.isEmpty()) { %>
            <div class="empty-cart-message">Your cart is empty.</div>
        <% } else { %>
            <% for (CartItem item : cartItems) { %>
                <div class="cart-item">
                    <img src="<%= item.getImageUrl() %>" alt="<%= item.getName() %>">
                    <div class="cart-item-details">
                        <h4><%= item.getName() %></h4>
                        <p>Estimated Delivery: <span style="color: #28a745;"><%= item.getDeliveryDate() %></span></p>
                        <p>Shipping Type: Courier</p>
                    </div>
                    <div class="cart-item-actions">
                        <button onclick="changeQuantity(<%= item.getId() %>, -1)">-</button>
                        <input type="number" id="quantity<%= item.getId() %>" value="<%= item.getQuantity() %>" min="1">
                        <button onclick="changeQuantity(<%= item.getId() %>, 1)">+</button>
                    </div>
                    <div class="cart-item-price">₹ <%= item.getPrice() %></div>
                    <div class="cart-item-remove" onclick="showModal(<%= item.getId() %>)">Remove</div>
                </div>
            <% } %>
            <div class="price-details">
                <p>MRP Total: ₹ <span id="mrp-total"><%= getTotalAmount(cartItems) %></span></p>
                <p>MRP Discount: ₹ <span id="mrp-discount">0</span></p>
                <p class="total-amount">Total Amount: ₹ <span id="total-amount"><%= getTotalAmount(cartItems) %></span></p>
            </div>
            <button class="checkout-btn" onclick="continueToCheckout()">Continue To Payment</button>
            <button class="checkout-btn" onclick="goToHomePage()">Go To Home Page</button>
        <% } %>
    </div>
    <div class="empty-cart-message" id="empty-cart-message" style="display: none;">
        Your cart is empty.
    </div>

    <!-- The Modal -->
    <div id="removeModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h2>Remove Item</h2>
            <p>Are you sure you want to remove this item?</p>
            <div class="modal-footer">
                <button class="cancel-btn" onclick="closeModal()">Cancel</button>
                <button class="remove-btn" onclick="confirmRemove()">Remove</button>
            </div>
        </div>
    </div>

    <script>
        function checkPincode() {
            const pincode = document.getElementById('pincode').value;
            alert('Checking delivery availability for pincode: ' + pincode);
        }

        function showModal(itemId) {
            document.getElementById('removeModal').style.display = 'block';
            document.getElementById('removeModal').dataset.itemId = itemId;
        }

        function closeModal() {
            document.getElementById('removeModal').style.display = 'none';
        }

        function confirmRemove() {
            const itemId = document.getElementById('removeModal').dataset.itemId;
            window.location.href = 'removeItem.jsp?id=' + itemId;
        }

        function continueToCheckout() {
        	window.location.href = "payment_page.html";
        }
        function goToHomePage() {
        	window.location.href = "main_page.html";
        }

        function changeQuantity(itemId, amount) {
            const quantityInput = document.getElementById('quantity' + itemId);
            let currentQuantity = parseInt(quantityInput.value);
            currentQuantity += amount;
            if (currentQuantity < 1) {
                currentQuantity = 1;
            }
            quantityInput.value = currentQuantity;
            updateQuantity(itemId, currentQuantity);
        }

        function updateQuantity(itemId, quantity) {
            window.location.href = 'updateQuantity.jsp?id=' + itemId + '&quantity=' + quantity;
        }

        function updateTotalAmount() {
            const quantity = parseInt(document.getElementById('quantity').value);
            const itemPrice = 449; // Price of the item
            const totalAmount = quantity * itemPrice;
            document.getElementById('mrp-total').innerText = totalAmount;
            document.getElementById('total-amount').innerText = totalAmount;
        }
    </script>
</body>
</html>

<%! 
    private List<CartItem> getCartItems() {
        List<CartItem> cartItems = new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping_cart", "root", "1234");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM cart_items");
            while (rs.next()) {
                CartItem item = new CartItem(
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

    private int getCartItemCount() {
        return getCartItems().size();
    }

    private int getTotalAmount(List<CartItem> cartItems) {
        int total = 0;
        for (CartItem item : cartItems) {
            total += item.getPrice() * item.getQuantity();
        }
        return total;
    }

    public class CartItem {
        private int id;
        private String name;
        private String imageUrl;
        private int price;
        private int quantity;
        private String deliveryDate;

        public CartItem(int id, String name, String imageUrl, int price, int quantity, String deliveryDate) {
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
