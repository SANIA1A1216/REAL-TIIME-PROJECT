<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delivery Location</title>
    <style>
            body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
    
       /*body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f9f9f9;
        }*/
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
            height: 60px;
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
            padding: 30px;
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
            width: 10px; 
            height: auto; 
            border-radius: 4px;
            overflow: hidden;
        }
        .image-wrapper img {
            width: 100%; 
            height: auto; 
            border-radius: 10px;
         }
      /*  header {
            background-color: #fff;
            padding: 10px 20px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        */

        main {
            text-align: center;
            padding: 120px;
        }

        h1 {
            margin-top: 20px;
            font-size: 40px;
        }

        h2 {
            color: #ff69b4;
            font-size: 25px;
        }

        input[type="text"] {
            width: 80%;
            padding: 20px;
            margin: 20px 0;
            font-size: 30px;
            border: 1px solid #ccc;
            border-radius: 5px;
           
        }

        .popular-cities {
            margin-top: 30px;
        }

        .popular-cities h3 {
            font-size: 40px;
            margin-bottom: 20px;
        }

        .cities-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
            padding: 0 20px;
        }

        .city {
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .city p {
            margin-top: 10px;
            font-size: 40px;
        }

        .city:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 12px rgba(0,0,0,0.2);
        }

        .city:hover img {
            transform: scale(1.1);
        }
        .large-button{
        width:100px;
        height:70px;
        font-size:15px;
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
        <h1>Search for City or Pincode where you want delivery</h1>
        <h2>BabyBloom is delivering in 750+ places across India</h2>
        <input type="text" placeholder="Search by city or pincode">
        <a href="main_page.html"><button class="large-button">Go to home page</button></a>
        <section class="popular-cities">
            <h3>POPULAR CITIES</h3>
            <div class="cities-grid">
                <div class="city">
                    <img src="data:image/jpeg;base64,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" alt="Bengaluru">
                    <p>Bengaluru</p>
                </div>
                <div class="city">
                    <img src="data:image/jpeg;base64,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" alt="Hyderabad">
                    <p>Hyderabad</p>
                </div>
                <div class="city">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7i95QHd4ADpi47mvaydskTItwwfUaE3cpIA&s" alt="Pune">
                    <p>Pune</p>
                </div>
                <div class="city">
                    <img src="data:image/jpeg;base64,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" alt="Delhi">
                    <p>Delhi</p>
                </div>
                <div class="city">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsvjwa32fS9BpTkMeZCU3vBdSk0OS6bhJ-NQ&s" alt="Chennai">
                    <p>Chennai</p>
                </div>
                <div class="city">
                    <img src="data:image/jpeg;base64,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" alt="Mumbai">
                    <p>Mumbai</p>
                </div>
                <div class="city">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH4czVG7m0nMJPyra8YnTpPNb7F_x_1rmM5g&s" alt="Kolkata">
                    <p>Kolkata</p>
                </div>
                <div class="city">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnI1t9yDuZafMEdODw-bkM8hlJ-O9o2jQg3Q&s" alt="Lucknow">
                    <p>Lucknow</p>
                </div>
                <div class="city">
                    <img src="data:image/jpeg;base64,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" alt="Gurgaon">
                    <p>Gurgaon</p>
                </div>
                <div class="city">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUzQ185gaO93IcGOVobjMiVuZiBL-bf8QRTQ&s" alt="Ahmedabad">
                    <p>Ahmedabad</p>
                </div>
                <div class="city">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOMLoGgHv0zCKr8l5V29A-wFDqmILLDTt5vzLka775mnyI03OIz9Rwebrk3NJh5IcPuts&usqp=CAU" alt="Patna">
                    <p>Patna</p>
                </div>
                <div class="city">
                    <img src="https://cdn.getyourguide.com/img/tour/5c88a72d6a68f.jpeg/53.jpg" alt="Jaipur">
                    <p>Jaipur</p>
                </div>
            </div>
        </section>
    </main>
   
</body>
</html>