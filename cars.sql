CREATE TABLE cars(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(255) NOT NULL,image_url VARCHAR(255) NOT NULL,
price INT NOT NULL,quantity INT NOT NULL,delivery_date DATE NOT NULL);

select *from cars;
INSERT INTO cars (name, image_url, price, quantity, delivery_date) VALUES ('Jeep', 'https://m.media-amazon.com/images/I/61+cuirqxdL._SX522_.jpg', 11930, 1, '2024-10-01');
INSERT INTO cars (name, image_url, price, quantity, delivery_date) VALUES ('Baybee Spyder Pro', 'https://m.media-amazon.com/images/I/71OnZ1iQ1IL._SX522_.jpg', 13990, 2, '2024-07-24');
INSERT INTO cars (name, image_url, price, quantity, delivery_date) VALUES ('GettBoles Speedio', 'https://m.media-amazon.com/images/I/81CFVlD9UyL._SX522_.jpg', 12499, 3, '2024-11-05');
INSERT INTO cars (name, image_url, price, quantity, delivery_date) VALUES ('SHAKYA WORLD Smoky', 'https://m.media-amazon.com/images/I/61tb2r7kofL._SX522_.jpg', 10599, 4, '2024-10-15');
INSERT INTO cars (name, image_url, price, quantity, delivery_date) VALUES ('Baybee Blaze Pro', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/17747201a.webp', 6999, 5, '2024-08-05');
INSERT INTO cars (name, image_url, price, quantity, delivery_date) VALUES ('WireScorts', 'https://m.media-amazon.com/images/I/41eVlke7s+L._SY300_SX300_.jpg', 639, 6, '2024-12-05');
INSERT INTO cars (name, image_url, price, quantity, delivery_date) VALUES ('Noddy Ride', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/17747214a.webp', 1285.90, 7, '2024-10-25');
INSERT INTO cars (name, image_url, price, quantity, delivery_date) VALUES ('Babyhug', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/13050267a.webp', 12995, 8, '2024-09-12');