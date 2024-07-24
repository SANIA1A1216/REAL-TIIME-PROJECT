CREATE TABLE softtoys(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(255) NOT NULL,image_url VARCHAR(255) NOT NULL,
price INT NOT NULL,quantity INT NOT NULL,delivery_date DATE NOT NULL);
drop table softtoys;
select *from softtoys;
INSERT INTO softtoys(name, image_url, price, quantity, delivery_date) VALUES ('SCOOBA Baby Penguin', 'https://m.media-amazon.com/images/I/510-quHnX0L.SX679.jpg', 999, 1, '2024-07-31');
INSERT INTO softtoys(name, image_url, price, quantity, delivery_date) VALUES ('Unicorn', 'https://m.media-amazon.com/images/I/21Bzpqh42rL.jpg', 899, 1, '2024-08-03');
INSERT INTO softtoys(name, image_url, price, quantity, delivery_date) VALUES ('Panda Teddy', 'https://m.media-amazon.com/images/I/71NJI9+ex8L.SX679.jpg', 389, 1, '2024-10-13');
insert into softtoys(name, image_url, price, quantity, delivery_date)VALUES ('DearJoy Little Penguin Soft Toy - Black','https://cdn.fcglcdn.com/brainbees/images/products/438x531/14675232a.webp',112,1,'24-07-20');
INSERT INTO softtoys (name, image_url, price, quantity, delivery_date) VALUES ('Kangaroo Soft Toy', 'https://m.media-amazon.com/images/I/61d9TJqbVTL.SX679.jpg', 799, 1, '2024-11-05');
INSERT INTO softtoys (name, image_url, price, quantity, delivery_date) VALUES ('Babique Dog Sitting Plush Soft Toy', 'https://m.media-amazon.com/images/I/31cd+95XwmL._SY300_SX300_.jpg', 209, 1, '2024-08-01');
INSERT INTO softtoys (name, image_url, price, quantity, delivery_date) VALUES ('Niku Reversible Bunny Rabbit Soft Stuffed', 'https://m.media-amazon.com/images/I/71GhhnlFRIL.SX679.jpg', 349, 1, '2024-10-06');
INSERT INTO softtoys (name, image_url, price, quantity, delivery_date) VALUES (' Animal Elephant Soft Toy Plush Hugging Pillow', 'https://m.media-amazon.com/images/I/71gFR0OfDOL.SX679.jpg', 599, 1, '2024-11-05');