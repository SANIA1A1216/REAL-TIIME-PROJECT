CREATE TABLE summerboys(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    quantity INT NOT NULL,
    delivery_date DATE NOT NULL
);

INSERT INTO summerboys(name, image_url, price, quantity, delivery_date) VALUES 
('Babyhug Cotton Knit Half Sleeves Striped & Bear Printed T-Shirt ', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/16628385a.webp', 1399, 1, '2024-07-03');

INSERT INTO summerboys(name, image_url, price, quantity, delivery_date) VALUES 
('Single Jersey Knit Half Sleeves T-Shirt & Shorts Set ', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/16407886a.webp', 899, 1, '2024-07-05');


INSERT INTO summerboys (name, image_url, price, quantity, delivery_date) VALUES 
(' Cotton Knit Sleeveless T-Shirt & Shorts Set ', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/16541359a.webp', 1199, 1, '2024-07-07');


INSERT INTO summerboys(name, image_url, price, quantity, delivery_date) VALUES 
('100% Cotton Half Sleeves Shirt & Shorts Set', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/16687120a.webp', 1299, 1, '2024-07-09');

INSERT INTO summerboys(name, image_url, price, quantity, delivery_date) VALUES 
('Babyhug Cotton Half Sleeve Striped Kurta Shirt', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/15939788a.webp', 1099, 1, '2024-07-05');

INSERT INTO summerboys (name, image_url, price, quantity, delivery_date) VALUES 
('Cotton Knit Single Jersey Half Sleeves T-Shirt & Shorts', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/15591452a.webp', 999, 1, '2024-07-02');

INSERT INTO summerboys(name, image_url, price, quantity, delivery_date) VALUES 
('Babyhug Raglan Sleeves Legged Starfish Print', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/16635960a.webp', 699, 1, '2024-07-06');

INSERT INTO summerboys(name, image_url, price, quantity, delivery_date) VALUES 
('Babyoye 100% Cotton Knit Half Sleeves T-Shirt ', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/16473314a.webp', 799, 1, '2024-07-04');

select *from summerboys;