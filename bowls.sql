CREATE TABLE bowls(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    quantity INT NOT NULL,
    delivery_date DATE NOT NULL
);

select *from bowls;
INSERT INTO bowls(name, image_url, price, quantity, delivery_date)
VALUES 
('Suction Bowl','https://i.pinimg.com/564x/e3/52/5b/e3525b7eb062223fd3717524a665d0bb.jpg',1200, 1, '2024-07-31');

INSERT INTO bowls(name, image_url, price, quantity, delivery_date)
VALUES 
('Bambus Bowl', 'https://i.pinimg.com/564x/60/44/b5/6044b5b683e1d39cc38b43b6dd01e36e.jpg', 1350, 1, '2024-08-02');


INSERT INTO bowls (name, image_url, price, quantity, delivery_date)
VALUES 
('Wheat Straw Bowl', 'https://i.pinimg.com/564x/a7/8b/94/a78b944899dfeeb9ba3eb97f0c95dee2.jpg', 1250, 1, '2024-07-21');


INSERT INTO bowls(name, image_url, price, quantity, delivery_date)
VALUES 
('Gyro Bowl', 'https://i.pinimg.com/564x/ba/62/e5/ba62e510b3d4397a7f5c46ef0a9d58fc.jpg', 1099, 1, '2024-07-11');



INSERT INTO bowls(name, image_url, price, quantity, delivery_date)
VALUES 
('Toy Bowl', 'https://i.pinimg.com/564x/38/5e/c6/385ec65b6097d094338fb5a4c5baaca6.jpg', 1300, 1, '2024-07-23');

INSERT INTO bowls (name, image_url, price, quantity, delivery_date)
VALUES 
('Glass Bowl', 'https://i.pinimg.com/564x/ba/99/7b/ba997b5bc55dd8d5dedba0e9a0a75e43.jpg', 1250, 1, '2024-07-11');

INSERT INTO bowls(name, image_url, price, quantity, delivery_date)
VALUES 
('RainbowSet Bowls', 'https://m.media-amazon.com/images/I/61kj31fVntL._AC_UF894,1000_QL80_.jpg', 1199, 1, '2024-08-03');

INSERT INTO bowls(name, image_url, price, quantity, delivery_date)
VALUES 
('MealSet Bowls', 'https://www.ikids.co.za/cdn/shop/products/UT01H-5_eb4edf3c-cb3c-42ea-b1ce-50f6c61f6f7e.jpg?v=1617832791&width=1200', 1099, 1, '2024-07-08');
drop table bowls;