CREATE TABLE wishlist_items(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    quantity INT NOT NULL,
    delivery_date DATE NOT NULL
);
drop table wishlist_items;
select * from wishlist_items;
INSERT INTO wishlist_items(name, image_url, price, quantity, delivery_date) VALUES ('SCOOBA Baby Penguin', 'https://m.media-amazon.com/images/I/510-quHnX0L.SX679.jpg', 999, 1, '2024-07-31');