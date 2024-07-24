CREATE TABLE dolls(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    quantity INT NOT NULL,
    delivery_date DATE NOT NULL
);

select *from dolls;
INSERT INTO dolls(name, image_url, price, quantity, delivery_date)
VALUES 
('Kitchen Set', 'https://images-cdn.ubuy.co.in/634f4e530acae723b063eb72-kimicare-58-piece-kitchen-cooking-set.jpg', 599, 1, '2024-08-18');

INSERT INTO dolls(name, image_url, price, quantity, delivery_date)
VALUES 
('Stacking Toy', 'https://5.imimg.com/data5/HZ/MC/WG/SELLER-13758313/kids-toys.jpg', 999, 1, '2024-09-11');


INSERT INTO dolls (name, image_url, price, quantity, delivery_date)
VALUES 
('Building Blocks', 'https://m.media-amazon.com/images/I/41rphlz6f3L.AC_UF350,350_QL80.jpg', 799, 1, '2024-09-01');


INSERT INTO dolls(name, image_url, price, quantity, delivery_date)
VALUES 
('Electric Vehicle', 'https://images-na.ssl-images-amazon.com/images/I/51Zsw0KMK+L.jpg', 1099, 1, '2024-10-01');



INSERT INTO dolls(name, image_url, price, quantity, delivery_date)
VALUES 
('WoodenSet', 'https://images-cdn.ubuy.co.in/633b5429afd9774e7e046b46-kiddery-toys-baby-toys.jpg', 700, 1, '2024-07-23');

INSERT INTO dolls (name, image_url, price, quantity, delivery_date)
VALUES 
('SoftToy', 'https://tinygrews.com/wp-content/uploads/2022/12/lady-desy-elephant-800x800.jpg', 1299, 1, '2024-08-01');

INSERT INTO dolls(name, image_url, price, quantity, delivery_date)
VALUES 
('HealthCare Setup', 'https://m.media-amazon.com/images/I/611Q72a7r9L.AC_UF1000,1000_QL80.jpg', 1399, 1, '2024-07-03');

INSERT INTO dolls(name, image_url, price, quantity, delivery_date)
VALUES 
('Music Telephone', 'https://m.media-amazon.com/images/I/71lsJmULtxL.AC_UF894,1000_QL80.jpg', 800, 1, '2024-07-19');