<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
    <style>
        /* your styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .navbar {
            width: 100%;
            background: linear-gradient(to left, #ffccff, #99ccff); /* Gradient colors */
            overflow: hidden;
        }
        .navbar-top {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 30px 40px;
            background-color: #fdfcfc;
            color: #104c91;
        }
        .logo img {
            height: 40px;
        }
        .search-bar {
            flex: 2;
            display: flex;
            align-items: center;
            margin: 0 20px;
        }
        .search-bar input {
            width: 50%; /* Shortened the width */
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px 0 0 4px;
        }
        .search-bar button {
            padding: 10px;
            border: 1px solid #ddd;
            border-left: 0;
            background-color: #ddd;
            border-radius: 0 4px 4px 0;
        }
        .delivery-location button {
            background-color: #efc9af;
            border: 1px solid #1f8ac0;
            padding: 10px 20px;
            border-radius: 4px;
            color: #1f8ac0;
        }
        .user-icons {
            display: flex;
            align-items: center;
        }
        .user-icons button {
            background-color: #88b7ee;
            border: none;
            margin-left: 10px;
            font-size: 20px;
            color: #f2f2f2;
            position: relative;
        }
        .user-icons .icon-badge {
            position: absolute;
            top: -5px;
            right: -5px;
            background-color: rgb(73, 67, 67);
            color: white;
            border-radius: 50%;
            padding: 2px 6px;
            font-size: 12px;
        }
        .user-icons .icon-badge:empty {
            display: none;
        }
        .navbar-bottom {
            background-color: #6783D9;
        }
        .navbar-bottom a {
            float: left;
            display: block;
            color: #131313;
            text-align: center;
            padding: 14px 18px;
            text-decoration: none;
        }
        .navbar-bottom a:hover {
            background-color: #ddd;
            color: rgb(63, 55, 62);
        }
        .dropdown {
            float: left;
            overflow: hidden;
        }
        .dropdown .dropbtn {
            font-size: 18px;  
            border: none;
            outline: none;
            color: rgb(154, 58, 174);
            padding: 14px 16px;
            background-color: inherit;
            font-family: Comic Sans MS;
            margin: 0;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 960px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
            border-radius: 8px;
        }
        .dropdown-content .column {
            float: left;
            width: 16.66%;
            padding: 10px;
            box-sizing: border-box;
        }
        .dropdown-content .column h3 {
            margin-top: 0;
        }
        .dropdown-content .column a {
            float: none;
            color: rgb(15, 14, 15);
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }
        .dropdown-content .column a:hover {
            background-color: #ddd;
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
        .clearfix::after {
            content: "";
            clear: both;
            display: table;
        }
        .nested-dropdown {
            position: relative;
            display: inline-block;
        }
        .nested-dropbtn {
            font-size: 16px;
            border: none;
            outline: none;
            padding: 12px;
            background-color: inherit;
            font-family: inherit;
            margin: 0;
            cursor: pointer;
        }
        .nested-dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 120px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
            left: 100%;
            top: 0;
        }
        .nested-dropdown-content button {
            color: rgb(15, 14, 15);
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            width: 100%;
            text-align: left;
            border: none;
            background: none;
            cursor: pointer;
        }
        .nested-dropdown-content button:hover {
            background-color: #ddd;
        }
        .nested-dropdown:hover .nested-dropdown-content {
            display: block;
        }
        .image-wrapper {
            position: absolute;
            top: 10px;
            right: 10px;
            width: 180px; 
            height: auto; 
            border-radius: 4px;
            overflow: hidden;
        }
        .image-wrapper img {
            width: 100%; 
            height: auto; 
            border-radius: 10px;
            }
            
        .container {
            max-width: 1200px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            display: flex;
            flex-direction: row;
            align-items: flex-start;
        }
        .thumbnails {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-right: 20px;
            position: sticky;
            top: 20px;
        }
        .thumbnails img {
            width: 100px;
            height: 100px;
            margin-bottom: 10px;
            cursor: pointer;
            border-radius: 10px;
            border: 2px solid transparent;
        }
        .thumbnails img:hover {
            border-color: #2057e1;
        }
        .product-image {
            position: sticky;
            top: 20px;
            flex: 1;
            max-width: 50%;
            margin-right: 20px;
            overflow: hidden;
            cursor: zoom-in;
        }
        .zoom-controls {
            position: absolute;
            top: 10px;
            right: 10px;
            z-index: 1;
        }
        .zoom-icon {
            display: inline-block;
            width: 30px;
            height: 30px;
            line-height: 30px;
            text-align: center;
            background-color: rgba(255, 255, 255, 0.7);
            color: #333;
            cursor: pointer;
            border-radius: 3px;
            margin-left: 5px;
            font-size: 20px;
        }
        .zoom-icon:hover {
            background-color: rgba(255, 255, 255, 0.9);
        }
        .product-image img {
            width: 100%;
            height: auto;
            border-radius: 10px;
            transition: transform 0.3s ease;
        }
        
        .benefits-image img {
            width: 100%;
            height: auto;
            margin-top: 20px;
            border-radius: 10px;
        }
        .product-details {
            flex: 2;
        }
        .product-info h1 {
            margin-top: 0;
            color: #ff69b4;
        }
        .product-info p {
            color: #333;
        }
        .product-info h2, .product-info h3 {
            color: #20b2aa;
        }
        .product-info h3 {
            font-size: 1.2em;
            color: #ff69b4;
        }
        .price {
            color: #ff69b4;
            font-weight: bold;
        }
        .original-price {
            text-decoration: line-through;
            color: #888;
        }
        .offer-price {
            font-size: 1.5em;
            color: #ff4500;
        }
        .offers, .questions-box {
            background-color: #f0f8ff;
            padding: 10px;
            border-radius: 5px;
            margin-top: 10px;
        }
        .offers ul, .questions-box ul {
            padding-left: 20px;
        }
        .offers li, .questions-box li {
            margin-bottom: 5px;
        }
        .product-actions {
            text-align: center;
            margin-top: 20px;
        }
        .product-actions button {
            background-color: #ff69b4;
            color: white;
            border: none;
            padding: 10px 20px;
            margin: 10px 0;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
        }
        .product-actions button:hover {
            background-color: #ff1493;
        }
        .wishlist-button {
            background-color: #20b2aa;
        }
        .wishlist-button:hover {
            background-color: #3cb371;
        }
        .check-button {
            height:40%;
            background-color: #4CAF50;
            border-radius:50px;
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
            font-size: 14px;
            display:inline-flex;
            border-radius: 3px;
            align-items:center;
        }
        .check-button:hover {
            background-color: #45a049;
        }
        .popup {
            display: none;
            position: fixed;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            background-color: #ff69b4;
            color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            font-size: 18px;
            z-index: 1000;
            animation: popup 1s ease-out forwards;
        }
        @keyframes popup {
            0% {
                transform: translate(-50%, -50%) scale(0.8);
                opacity: 0;
            }
            100% {
                transform: translate(-50%, -50%) scale(1);
                opacity: 1;
            }
        }
        .confetti {
            position: fixed;
            width: 10px;
            height: 10px;
            background-color: red;
            animation: fall 1s linear forwards;
            top: 0; /* Start from the top */
        }
        @keyframes fall {
            0% {
                opacity: 1;
                transform: translateY(0);
            }
            100% {
                opacity: 0;
                transform: translateY(100vh);
            }
        }
        .zoom-container {
            position: relative;
            width: 200px;
            height: 200px;
            margin-left: 20px;
            border: 1px solid #ccc;
            overflow: hidden;
        }
        .zoom-container img {
            width: 100%;
            height: 100%;
            object-fit: contain; /* Maintain aspect ratio */
            transform-origin: top left;
            transition: transform 0.3s ease;
        }
        .zoom-container:hover img {
            transform: scale(1.2); /* Zoom in on hover */
        }
        .pincode-input {
            display: flex;
            align-items: center;
            margin-top: 10px;
        }
        .pincode-input input {
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
            margin-right: 5px;
        }
        .pincode-input button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            font-size: 14px;
            border-radius: 3px;
        }
        .pincode-input button:hover {
            background-color: #45a049;
        }
        .pincode-feedback {
            margin-top: 5px;
            font-size: 14px;
        }
        .pincode-feedback.valid {
            color: green;
        }
        .pincode-feedback.invalid {
            color: red;
        }

        .divider {
            border-top: 2px solid #ff69b4;
            margin: 20px 0;
        }
        .questions-box, .reviews-box {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .questions-box p, .reviews-box p {
            margin: 0;
            color: #333;
        }
        .ask-button, .review-button {
            background-color: #ff69b4;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 14px;
            border-radius: 5px;
        }
        .ask-button:hover, .review-button:hover {
            background-color: #ff1493;
        }
        .rating-sty{
            background-color:green;
            padding:7px;
            padding-top:3px;
            padding-bottom:3px;
            color:#ffff;
            font-size:15px;
        }
        
         }
    </style>
</head>
<body>
    <header class="navbar">
        <div class="navbar-top">
            <div class="logo">
                <img src="logo_1.jpeg" alt="Logo">
            </div>
            <div class="search-bar">
                <input type="text" placeholder="Search for gifts">
                <button>🔍</button>
            </div>
            <div class="delivery-location">
                <a href="delivery_loc_1.jsp"><button>Delivery Location</button></a>
            </div>
            <div class="user-icons">
                <a href=""><button>👤</button></a>
                <a href="wishlist.jsp"><button>💖<span class="icon-badge"></span></button></a>
                <a href="cart.jsp"><button>🛒<span class="icon-badge"></span></button></a>
            </div>
        </div>
    
        <div class="navbar-bottom">
            <a href="#express">Express</a>
            <div class="dropdown">
                <button class="dropbtn">Baby Bloom 
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content clearfix">
                    <div class="column">
                        <h3>Dresses</h3>
                        <div class="nested-dropdown">
                            <button class="nested-dropbtn">Western</button>
                            <div class="nested-dropdown-content">
                                <button onclick="openNewWindow1()">Girls</button>
                                <button onclick="openNewWindow2()">Boys</button>
                            </div>
                        </div>
                        <div class="nested-dropdown">
                            <button class="nested-dropbtn">Traditional</button>
                            <div class="nested-dropdown-content">
                                <button onclick="openNewWindow3()">Girls</button>
                                <button onclick="openNewWindow4()">Boys</button>
                            </div>
                        </div>
                        <div class="nested-dropdown">
                            <button class="nested-dropbtn">Summers</button>
                            <div class="nested-dropdown-content">
                                <button onclick="openNewWindow5()">Girls</button>
                                <button onclick="openNewWindow6()">Boys</button>
                            </div>
                        </div>
                        <div class="nested-dropdown">
                            <button class="nested-dropbtn">Winters</button>
                            <div class="nested-dropdown-content">
                                <button onclick="openNewWindow7()">Girls</button>
                                <button onclick="openNewWindow8()">Boys</button>
                            </div>
                        </div>
                        <div class="nested-dropdown">
                            <button class="nested-dropbtn">Footwear</button>
                            <div class="nested-dropdown-content">
                                <button onclick="openNewWindow9()">Girls</button>
                                <button onclick="openNewWindow10()">Boys</button>
                            </div>
                        </div>
                    </div>
                    <div class="column">
                        <h3>Toys</h3>
                        <a href="#" onclick="openNewWindow11()">Remote</a>
                        <a href="#" onclick="openNewWindow12()">Dolls</a>
                        <a href="#" onclick="openNewWindow13()">Cars</a>
                        <a href="#" onclick="openNewWindow14()">Soft Toys</a>
                    </div>
                    <div class="column">
                        <h3>Skin care</h3>
                        <a href="#" onclick="openNewWindow15()">Soaps</a>
                        <a href="#" onclick="openNewWindow16()">Lotions</a>
                        <a href="#" onclick="openNewWindow17()">Oils</a>
                        <a href="#" onclick="openNewWindow18()">Shampoos</a>
                    </div>
                    <div class="column">
                        <h3>Feeding</h3>
                        <a href="#" onclick="openNewWindow19()">Bottles</a>
                        <a href="#" onclick="openNewWindow20()">Nipples</a>
                        <a href="#" onclick="openNewWindow21()">Spoons</a>
                        <a href="#" onclick="openNewWindow22()">Bowls</a>
                    </div>
                    <div class="image-wrapper">
                        <img src="baby_img.jpeg">
                    </div>
                </div>
            </div> 
            <a href="#flowers">Flowers</a>
            <a href="#cakes">Cakes</a>
            <a href="#plants">Plants</a>
            <a href="#combos">Combos</a>
            <a href="#personalized">Personalized</a>
            <a href="#giftitems">Gift items</a>
        </div>
    </header>
    
    <div class="container">
        <% 
            try {
                // Load MySQL JDBC driver
                Class.forName("com.mysql.jdbc.Driver");
                
                // Connect to database
                String url = "jdbc:mysql://localhost:3306/shopping_cart";
                String user = "root";
                String password = "1234";
                Connection conn = DriverManager.getConnection(url, user, password);
                
                // Get product ID from request
                int productId = Integer.parseInt(request.getParameter("id"));
                
                // Execute SQL query to fetch product details
                String sql = "SELECT * FROM cars WHERE id = ?";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setInt(1, productId);
                ResultSet rs = stmt.executeQuery();
                
                if (rs.next()) {
                    String name = rs.getString("name");
                    String imageUrl = rs.getString("image_url");
                    int price = rs.getInt("price");
                    int quantity = rs.getInt("quantity");
                    Date deliveryDate = rs.getDate("delivery_date");
        %>
        <div class="thumbnails">
            <img src="<%= imageUrl %>" alt="Thumbnail 1" onclick="changeImage('<%= imageUrl %>')">
        </div>
        <div class="product-image">
            <div class="zoom-controls">
                <span class="zoom-icon" onclick="zoomIn()">+</span>
                <span class="zoom-icon" onclick="zoomOut()">-</span>
            </div>
            <img id="productImg" src="<%= imageUrl %>" alt="<%= name %>">
            <div class="benefits-image">
                <img src="benefits.png" alt="Benefits Image">
            </div>
        </div>
        <div class="product-details">
            <div class="product-info">
                <h1><%= name %></h1>
                <h3><span class="rating-sty">4.5 ★</span> Rating & 22 Reviews</h3>
                <p>
                    <span class="offer-price">₹<%= price %> </span> 
                    <span class="original-price">&#8377;2000</span> 
                    <span class="price">offer</span>
                </p>
                <p>Inclusive of all taxes</p>
                <div class="offers">
                    <h3>Available offers</h3>
                    <ul>
                        <li>Get upto ₹750 Cashback on paying via Mobikwik *T&C</li>
                        <li>Use Coupon Code: NEW20 to get 20% off</li>
                        <li>Use Coupon Code: BLOOM50 to get ₹50 off on minimum purchase of ₹399</li>
                        <li>10% Cashback on HDFC Bank Credit Cards</li>
                        <li>5% Cashback on Amazon Pay ICICI Credit card</li>
                        <li>Flat ₹100 off on the first order</li>
                        <li>Get upto ₹750 Cashback on paying via Mobikwik *T&C</li>
                    </ul>
                </div>
                <p>Estimated Delivery Date: <%= deliveryDate %></p>
                <div class="pincode-input">
                            <a >Enter pincode to check delivery  </a>
                            <input type="text" id="pincode" placeholder="Enter pincode">
                            <div id="pincodeFeedback" class="pincode-feedback"></div>

                            <button onclick="checkPincode()">Check</button>
                        </div>
                <div class="product-actions">
                    <form action="CartServlet" method="post">
                        <input type="hidden" name="productId" value="<%= productId %>">
                        <input type="hidden" name="productName" value="<%= name %>">
                        <input type="hidden" name="productImageUrl" value="<%= imageUrl %>">
                        <input type="hidden" name="productEstDel" value="<%= deliveryDate %>">
                        <input type="hidden" name="productPrice" value="<%= price %>">
                        <button type="submit" class="cart-button">Add to Cart</button>
                    </form>
               
                     <form action="WishlistServlet" method="post">
                        <input type="hidden" name="productId" value="<%= productId %>">
                        <input type="hidden" name="productName" value="<%= name %>">
                        <input type="hidden" name="productImageUrl" value="<%= imageUrl %>">
                        <input type="hidden" name="productEstDel" value="<%= deliveryDate %>">
                        <input type="hidden" name="productPrice" value="<%= price %>">
                        <button type="submit" class="wishlist-button">Add to Wishlist</button>
                    </form>
                </div>
                <h3>Product Details</h3>
                    <ul>
                        
                        
                        <li>Country of origin: India</li>
                    </ul>
                    <h3>Delivery Details</h3>
                    <ul>
                        <li>The actual product may vary in shape, size, brand, and color as per local availability.</li>
                        <li>Messages on cards may not be available in a few areas.</li>
                        <li>If this product is shipped using the services of our courier partners, the date of delivery is an estimate.</li>
                        <li>Our courier partners do not call before delivering an order, so we recommend that you provide an address at which someone will be present to receive the package. </li>
                        <li>The delivery cannot be redirected to any other address. Redelivery is not possible. </li>
                        <li>Recipients might be contacted for Timely Delivery. </li>
                        <li>A Slight delay might be expected during the Festival Season. </li>
                        <li>If it is a combo product then delivery of each product might be at different times. </li>
                        <li>In case the product contains alcohol then the recipient has to meet the local minimum age requirement for alcohol consumption and valid id proof might be required. </li>
                        <li>If the recipient is unavailable, the courier partner will deliver the gift to the local courier centre/collection point. The recipient is responsible for coordinating with the courier partner directly, and we will provide them with the courier partner's details.</li>
                    </ul>
                    <div class="divider"></div>
                    <h3>Questions & Answers</h3>
                    <div class="questions-box">
                        <p>Didn't get the right answer you were looking for?</p>
                        <button class="ask-button" onclick="window.location.href='a.html';">Ask Us</button>
                    </div>
                    <div class="divider"></div>
                    <h3>Product Reviews</h3>
                    <div class="questions-box">
                        <p>Feeling on top of the world with the latest order?</p>
                        <button class="review-button" onclick="window.location.href='a.html';">Write a Review</button>
                    </div>
            
        </div>
        
        <% 
                }
                
                // Close JDBC objects
                rs.close();
                stmt.close();
                conn.close();
                
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </div>
    </div>
    <div class="popup" id="wishlistPopup">
        <p>Item added to wishlist!</p>
    </div>
    <div id="confettiContainer"></div>
    <script>
    function openNewWindow1() {
        window.location.href = "westerngirls.jsp";
    }
    function openNewWindow2() {
        window.location.href = "westernboys.jsp";
    }
    function openNewWindow3() {
        window.location.href = "traditionalgirls.jsp";
    }
    function openNewWindow4() {
        window.location.href = "traditionalboys.jsp";
    }
    function openNewWindow5() {
        window.location.href = "summergirls.jsp";
    }
    function openNewWindow6() {
        window.location.href = "summerboys.jsp";
    }
    function openNewWindow7() {
        window.location.href = "wintergirls.jsp";
    }
    function openNewWindow8() {
        window.location.href = "winterboys.jsp";
    }
    function openNewWindow9() {
        window.location.href = "girlsfootwear.jsp";
    }
    function openNewWindow10() {
        window.location.href = "boysfootwear.jsp";
    }
    function openNewWindow11() {
        window.location.href = "remote.jsp";
    }
    function openNewWindow12() {
        window.location.href = "dolls.jsp";
    }
    function openNewWindow13() {
        window.location.href = "cars.jsp";
    }
    function openNewWindow14() {
        window.location.href = "softtoys.jsp";
    }
    function openNewWindow15() {
        window.location.href = "soaps.jsp";
    }
    function openNewWindow16() {
        window.location.href = "lotions.jsp";
    }
    function openNewWindow17() {
        window.location.href = "oils.jsp";
    }
    function openNewWindow18() {
        window.location.href = "shampoos.jsp";
    }
    function openNewWindow19() {
        window.location.href = "bottles.jsp";
    }
    function openNewWindow20() {
        window.location.href = "nipples.jsp";
    }
    function openNewWindow21() {
        window.location.href = "spoons.jsp";
    }
    function openNewWindow22() {
        window.location.href = "bowls.jsp";
    }

    function changeImage(imageUrl) {
        document.getElementById('productImg').src = imageUrl;
    }

    function zoomIn() {
        var img = document.getElementById('productImg');
        var currWidth = img.clientWidth;
        img.style.width = (currWidth + 50) + 'px';
    }

    function zoomOut() {
        var img = document.getElementById('productImg');
        var currWidth = img.clientWidth;
        img.style.width = (currWidth - 50) + 'px';
    }

    function openNewWindow() {
        window.open("new_page.html", "_blank");
    }
    function addToWishlist() {
        showPopup('wishlistPopup');
        for (let i = 0; i < 30; i++) {
            createConfetti();
        }
    }

    function showPopup(popupId) {
        const popup = document.getElementById(popupId);
        popup.style.display = 'block';
        setTimeout(() => {
            popup.style.display = 'none';
        }, 1000);
    }


    function createConfetti() {
        const confetti = document.createElement('div');
        confetti.classList.add('confetti');
        confetti.style.left = Math.random() * 100 + 'vw';
        confetti.style.top = Math.random() * 50 + 'vh'; // Start from top to middle
        confetti.style.backgroundColor = getRandomColor();
        document.body.appendChild(confetti);

        confetti.addEventListener('animationend', () => {
            confetti.remove();
        });
    }

    function getRandomColor() {
        const colors = ['#ff69b4', '#ff1493', '#20b2aa', '#ff4500', '#4CAF50'];
        return colors[Math.floor(Math.random() * colors.length)];
    }

    function checkPincode() {
const pincode = document.getElementById('pincode').value;
const feedback = document.getElementById('pincodeFeedback');
const validPincodes = ['500072', '500033', '500018','500090','500081']; // Example valid pincodes

if (/^\d+$/.test(pincode)) {
    if (validPincodes.includes(pincode)) {
        feedback.textContent = 'Delivery is available for this pincode!';
        feedback.classList.remove('invalid');
        feedback.classList.add('valid');
    } else {
        feedback.textContent = 'Delivery is not available for this pincode.';
        feedback.classList.remove('valid');
        feedback.classList.add('invalid');
    }
} else {
    alert('Please enter a valid pincode with numbers only.');
}
}
    </script>
</body>
</html>