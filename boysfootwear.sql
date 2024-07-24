CREATE TABLE boysfootwear(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    quantity INT NOT NULL,
    delivery_date DATE NOT NULL
);


INSERT INTO boysfootwear(name, image_url, price, quantity, delivery_date)
VALUES 
('Yellow Clog Shoes', 'https://m.media-amazon.com/images/I/71EzIX0RwuL._SY695_.jpg', 499, 1, '2024-07-03');

INSERT INTO boysfootwear(name, image_url, price, quantity, delivery_date)
VALUES 
('Slip on Clogs', 'https://m.media-amazon.com/images/I/51mMPwfgayL._SY695_.jpg',  599, 1, '2024-07-01');


INSERT INTO boysfootwear(name, image_url, price, quantity, delivery_date)
VALUES 
('LED Lightup Shoes', 'https://m.media-amazon.com/images/I/41b9s4eQPNL._SY695_.jpg',  699, 1, '2024-07-01');


INSERT INTO  boysfootwear(name, image_url, price, quantity, delivery_date)
VALUES 
('Panda Face socks cum shoes', 'https://m.media-amazon.com/images/I/71X0gQ0BA6L._SY695_.jpg', 299, 1, '2024-07-01');



INSERT INTO boysfootwear(name, image_url, price, quantity, delivery_date)
VALUES 
('Baby hug Clogs', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/16420594a.webp', 599, 1, '2024-07-03');

INSERT INTO boysfootwear(name, image_url, price, quantity, delivery_date)
VALUES 
('Yellow Bee Buckle Sandals', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/15751227a.webp', 399, 1, '2024-07-01');

INSERT INTO boysfootwear(name, image_url, price, quantity, delivery_date)
VALUES 
('Car Pattern Clogs', 'https://yellowbee.online/cdn/shop/products/aqua-car-pattern-clogs-for-boys-440474_540x.jpg?v=1707235483', 399, 1, '2024-07-03');

INSERT INTO boysfootwear(name, image_url, price, quantity, delivery_date)
VALUES 
('Yellow Color Baby Shoes', 'https://rukminim2.flixcart.com/image/750/900/xif0q/bootie/q/v/5/3-12-os027-oscope-12-original-imagm4hucg3qyjgr.jpeg?q=20&crop=false', 399, 1, '2024-07-03');
select * from boysfootwear;
drop table boysfootwear;