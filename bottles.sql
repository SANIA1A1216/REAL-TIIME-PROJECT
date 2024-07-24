CREATE TABLE bottles(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    quantity INT NOT NULL,
    delivery_date DATE NOT NULL
);

select *from bottles;
INSERT INTO bottles(name, image_url, price, quantity, delivery_date)
VALUES 
('Slipper Bottle', 'https://market99.com/cdn/shop/files/500ml-sipper-bottle-for-kids-light-blue-sippy-cups-1.jpg?v=1697017033
', 500, 1, '2024-07-20');

INSERT INTO bottles(name, image_url, price, quantity, delivery_date)
VALUES 
('Stainless Steel Bottle', 'https://myborosil.com/cdn/shop/products/my-borosil-kids-bottles-500-ml-princess-kids-sipper-31963003027594.jpg?v=1677180053', 999, 1, '2024-07-01');


INSERT INTO bottles (name, image_url, price, quantity, delivery_date)
VALUES 
('Insulated Thermos Bottle', 'https://staranddaisy.in/wp-content/uploads/2021/07/kidssipper_27fc23_pink.jpg', 1111, 1, '2024-08-01');


INSERT INTO bottles(name, image_url, price, quantity, delivery_date)
VALUES 
('Toy Bottle', 'https://mybabybabbles.com/cdn/shop/files/pink-maths-wizard-theme-stainless-steel-water-bottle-for-kids-430mllittle-surprise-box-823102.jpg?v=1713854959&width=2048
', 700, 1, '2024-07-11');



INSERT INTO bottles(name, image_url, price, quantity, delivery_date)
VALUES 
('TimeMarker Bottle', 'https://www.solara.in/cdn/shop/files/Artboard1_4.jpg?v=1711011258&width=1000', 1259, 1, '2024-08-13');

INSERT INTO bottles(name, image_url, price, quantity, delivery_date)
VALUES 
('Mini Bottle', 'https://i.ebayimg.com/images/g/FPAAAOSwKt5hC9ir/s-l400.jpg', 888, 1, '2024-08-19');

INSERT INTO bottles(name, image_url, price, quantity, delivery_date)
VALUES 
('Twinset Bottle', 'https://images.meesho.com/images/products/347687166/ezzsc_512.webp', 1399, 1, '2024-07-20');

INSERT INTO bottles(name, image_url, price, quantity, delivery_date)
VALUES 
('vaccum Insulated Bottle', 'https://static-01.daraz.com.np/p/03e7969bae1bd1f9c20da2b4cc828a8f.jpg_750x750.jpg_.webp', 999, 1, '2024-07-03');