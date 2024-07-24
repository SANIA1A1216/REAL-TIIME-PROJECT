CREATE TABLE shampoos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    quantity INT NOT NULL,
    delivery_date DATE NOT NULL
);

select *from shampoos;
INSERT INTO shampoos(name, image_url, price, quantity, delivery_date)
VALUES 
('Jhonson Baby Shampoo', 'https://i5.walmartimages.com/asr/afdc8e4e-6b95-442c-88ff-19f17852ad56_1.2d7c1219d0268b0628862d4c37fc4e19.jpeg', 899, 1, '2024-08-12');

INSERT INTO shampoos(name, image_url, price, quantity, delivery_date)
VALUES 
('Babylogy Shampoo', 'https://static2.babygagaimages.com/wordpress/wp-content/uploads/2020/07/ba.jpg', 450, 1, '2024-07-09');


INSERT INTO shampoos(name, image_url, price, quantity, delivery_date)
VALUES 
('Himalaya Baby Shampoo', 'https://4.imimg.com/data4/DV/BP/MY-23455063/himalaya-gentle-baby-shampoo-400-ml-500x500.jpg', 399, 1, '2024-07-10');


INSERT INTO shampoos(name, image_url, price, quantity, delivery_date)
VALUES 
('Aveeno Baby Shampoo', 'https://cdn.tirabeauty.com/v2/billowing-snowflake-434234/tira-p/wrkr/products/pictures/item/free/resize-w:540/1119914/zLdbodKKB-1119914_1.jpg', 499, 1, '2024-07-13');



INSERT INTO shampoos(name, image_url, price, quantity, delivery_date)
VALUES 
('Love Mamma Shampoo', 'https://cdn.tirabeauty.com/v2/billowing-snowflake-434234/tira-p/wrkr/products/pictures/item/free/resize-w:540/1138710/zNskICaJfj-1138710-1.jpg', 399, 1, '2024-07-20');

INSERT INTO shampoos(name, image_url, price, quantity, delivery_date)
VALUES 
('Mama Earth Shampoo', 'https://cdn2.momjunction.com/wp-content/uploads/2019/10/mamaearth_shampoo.jpg', 699, 1, '2024-08-12');

INSERT INTO shampoos(name, image_url, price, quantity, delivery_date)
VALUES 
('Jolly Shampoo', 'https://jolly.com.ec/wp-content/uploads/2016/03/2-shampoo-jolly-400x260.png', 1299, 1, '2024-07-03');

INSERT INTO shampoos(name, image_url, price, quantity, delivery_date)
VALUES 
('Baby Care Shampoo', 'https://th.bing.com/th/id/OIP.K1-NLDzNLXD4c_Wzd1AHcAHaFM?w=1200&h=843&rs=1&pid=ImgDetMain', 399, 1, '2024-07-08');