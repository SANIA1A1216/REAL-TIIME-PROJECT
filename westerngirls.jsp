<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Baby Bloom</title>
    <style>
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
            width: 40px;
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
         img {
           /* border-radius: 8px;*/
            width: 300px; /* Set width to be 250px */
            height: 300px; /* Set height to be 250px to make it square */
            margin: 0 auto;
            display: block;
            transition: transform 0.3s; /* Smooth transition for the transform */
            
            border: 1px solid transparent;
        
        
        }
        table {
            width: 100%;
            height: 50%;
            border-spacing: 40px;
        }
        table, th, td {
            border: none;
        }
        th, td {
            padding: 10px;
            text-align: center;
            vertical-align: top;
        }
        h4 {
            color: rgb(6, 6, 6);
        }

        p {
            font-family: 'Arial', sans-serif;
            font-size: 15px;
            color: #333;
            font-weight: bold;
        }

        .product-item {
            transition: transform 0.3s;
        }

        .product-item:hover {
            transform: scale(1.1); /* Adjust scale value as needed */
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

    <main>
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
                    
                    // Execute SQL query
                    String sql = "SELECT * FROM westerngirls";
                    Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery(sql);
                    
                    // Initialize counter
                    int count = 0;
            %>
            <table>
            <% 
                    while (rs.next()) {
                        if (count % 4 == 0) { // Start a new row every 4 items
            %>
                <tr>
            <% 
                        }
            %>
                    <td>
                        <div class="product-item">
                            <a href="westerngirls_prod.jsp?id=<%= rs.getInt("id") %>">
                                <img src="<%= rs.getString("image_url") %>" alt="<%= rs.getString("name") %>">
                            </a>
                            <h4><%= rs.getString("name") %></h4>
                            <p>Price: &#8377;<%= rs.getInt("price") %></p>
                            <p>Est. Delivery Date: <%= rs.getDate("delivery_date") %></p>
                        </div>
                    </td>
            <% 
                        count++;
                        if (count % 4 == 0) { // End the row after 4 items
            %>
                </tr>
            <% 
                        }
                    }
                    
                    // Close any unclosed row
                    if (count % 4 != 0) {
            %>
                </tr>
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
            </table>
        </div>
    </main>

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

    </script>
</body>
</html>