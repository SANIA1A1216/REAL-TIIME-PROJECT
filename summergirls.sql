CREATE TABLE summergirls(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    quantity INT NOT NULL,
    delivery_date DATE NOT NULL
);

select *from summergirls;

INSERT INTO summergirls(name, image_url, price, quantity, delivery_date) VALUES 
('Kookie Kids Woven Sleeveless Frock ', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/15997183a.webp', 1499, 1, '2024-07-13');

INSERT INTO summergirls(name, image_url, price, quantity, delivery_date) VALUES 
('Babyhug 100% Cotton Knit Sleeveless Top & Shorts', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/15580205a.webp', 999, 1, '2024-07-05');


INSERT INTO summergirls (name, image_url, price, quantity, delivery_date) VALUES 
('Sleeveless Frock Swimsuit Apple Print & Bow', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/15454618a.webp', 1299, 1, '2024-07-07');


INSERT INTO summergirls(name, image_url, price, quantity, delivery_date) VALUES 
('Babyhug Rayon Woven Half Sleeves', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/15997989a.webp', 1399, 1, '2024-07-03');

INSERT INTO summergirls(name, image_url, price, quantity, delivery_date) VALUES 
('Cotton Knit Sleeveless Night Suit Floral Print', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/16256878a.webp', 1299, 1, '2024-07-05');

INSERT INTO summergirls (name, image_url, price, quantity, delivery_date) VALUES 
('Cotton Text Printed Co-Ord Set Of Sleeveless Top & Joggers', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/15588207a.webp', 1299, 1, '2024-07-02');

INSERT INTO summergirls(name, image_url, price, quantity, delivery_date) VALUES 
('Cotton Sleeveless Floral Printed Top & Shorts', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/16552094a.webp', 899, 1, '2024-07-03');

INSERT INTO summergirls(name, image_url, price, quantity, delivery_date) VALUES 
('100% Cotton Sleeveless Tie Dye Dress - Blue ', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/16163323a.webp', 799, 1, '2024-07-04');