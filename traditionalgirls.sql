CREATE TABLE traditionalgirls(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    quantity INT NOT NULL,
    delivery_date DATE NOT NULL
);

INSERT INTO traditionalgirls (name, image_url, price, quantity, delivery_date)
VALUES 
('Sleeveless Choli Lehenga', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/17159140a.webp', 1299, 1, '2024-07-01');

INSERT INTO traditionalgirls (name, image_url, price, quantity, delivery_date)
VALUES 
('Kurti Sharara & Dupatta- Blue', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/16150591a.webp', 1399, 1, '2024-07-03');

INSERT INTO traditionalgirls (name, image_url, price, quantity, delivery_date)
VALUES 
('Lace Embellished Frock ', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/17451866a.webp', 1099, 1, '2024-07-01');

INSERT INTO traditionalgirls (name, image_url, price, quantity, delivery_date)
VALUES 
('Kurti Palazzo Set', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/17759722a.webp', 1199, 1, '2024-07-02');

INSERT INTO traditionalgirls (name, image_url, price, quantity, delivery_date)
VALUES 
('Sharara & Dupatta ', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/14904148a.webp', 1499, 1, '2024-07-04');

INSERT INTO traditionalgirls (name, image_url, price, quantity, delivery_date)
VALUES 
('Jersey Knit Short Sleeves', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/16280005a.webp', 899, 1, '2024-07-02');

INSERT INTO traditionalgirls (name, image_url, price, quantity, delivery_date)
VALUES 
('Lehenga Choli Set - Cream', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/13089715e.webp', 999, 1, '2024-07-01');

INSERT INTO traditionalgirls (name, image_url, price, quantity, delivery_date)
VALUES 
('Kurta & Salwar - Green', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/14954128c.webp', 899, 1, '2024-07-02');

select * from traditionalgirls;
drop table traditionalgirls;