CREATE TABLE westerngirls(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    quantity INT NOT NULL,
    delivery_date DATE NOT NULL
);

select *from westerngirls;
INSERT INTO westerngirls(name, image_url, price, quantity, delivery_date)
VALUES 
('Cotton Baby dress', 'https://cdn.shopify.com/s/files/1/0029/7041/9313/products/Baby-Girl-Clothes-Summer-Newborn-Girls-Dress-Bebe-Kid-Baby-Dress-Cotton-Lace-Beautiful-Flower-Girl_eea05430-4687-40f4-9000-179962a0c539_grande.jpg', 850, 1, '2022-07-02');

INSERT INTO westerngirls(name, image_url, price, quantity, delivery_date)
VALUES 
('Striped T-Shirt With Navy Dungaree', 'https://cdn.shopify.com/s/files/1/0266/6276/4597/files/300961908NAVY_1.jpg?v=1704954930', 700, 1, '2024-07-01');


INSERT INTO westerngirls (name, image_url, price, quantity, delivery_date)
VALUES 
('long Sleeve dress', 'https://5.imimg.com/data5/SR/II/FE/SELLER-22103794/ayangb8809-1-1--500x500.jpg', 900, 1, '2024-07-01');


INSERT INTO westerngirls(name, image_url, price, quantity, delivery_date)
VALUES 
('Seersucker Dress', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSc9B8R-Uowy-liyJfFBi_mVglILNFyH7AfFw&s', 699, 1, '2024-07-01');



INSERT INTO westerngirls(name, image_url, price, quantity, delivery_date)
VALUES 
('Yellow frock', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdFOWRKqpurO_oEmJkQBVnuEhtuJf6a2ZHdP5qkabPZPF-QxuEDByzpKEgEgiG_iGm22k&usqp=CAU', 1000, 1, '2024-07-03');

INSERT INTO westerngirls (name, image_url, price, quantity, delivery_date)
VALUES 
('Netted Frock', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvChrI4gdS3uTlrOO4sFGOy8KgsIs_lVyCge8EiZ5bwuFBW1EVA4VL1guNyIl98bVEeL4&usqp=CAU', 750, 1, '2024-07-01');

INSERT INTO westerngirls(name, image_url, price, quantity, delivery_date)
VALUES 
('Jump suit', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2tTbhmJs8AtxLNu-4OlhlxlnhbAvcSsQ93w&s', 999, 1, '2024-07-03');

INSERT INTO westerngirls(name, image_url, price, quantity, delivery_date)
VALUES 
('Elegant style frock', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQg09UHQxqb5syh6Ekvza1hp5TFxHv4EPcPgg&s', 599, 1, '2024-07-03');