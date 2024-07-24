CREATE TABLE wintergirls(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    quantity INT NOT NULL,
    delivery_date DATE NOT NULL
);


INSERT INTO wintergirls (name, image_url, price, quantity, delivery_date)
VALUES 
('Buy Baby Girl Fall Clothes Toddler Long Sleeve Outfit', 'https://m.media-amazon.com/images/I/717r-KJ3n-L._AC_UY1100_.jpg', 1399, 1, '2024-07-01');

INSERT INTO wintergirls(name, image_url, price, quantity, delivery_date)
VALUES 
('LSoft and Light weight Sweater', 'https://ae01.alicdn.com/kf/Sabc02151d09e4b6daf6b07afc74fe207a.jpg_640x640Q90.jpg_.webp', 1399, 1, '2024-07-03');

INSERT INTO wintergirls(name, image_url, price, quantity, delivery_date)
VALUES 
('Polyester and Fur Super Cute Kids Girls Winter Clothes', 'https://5.imimg.com/data5/SR/II/FE/SELLER-22103794/ayangb8809-1-1--500x500.jpg', 1099, 1, '2024-07-01');

INSERT INTO wintergirls(name, image_url, price, quantity, delivery_date)
VALUES 
('Baby Girl Winter Dresses: Buy Baby Girl Winter Clothest', 'https://cdn.pixelspray.io/v2/black-bread-289bfa/XUefL6/wrkr/t.resize(h:490,w:490)/data/mothercare/20072023/410400575001_1.jpg', 1199, 1, '2024-07-02');

INSERT INTO wintergirls (name, image_url, price, quantity, delivery_date)
VALUES 
('Polyester and Fur Kids Girls Winter Clothes, ', 'https://5.imimg.com/data5/VE/FB/FY/SELLER-22103794/girls-coats.jpg', 1499, 1, '2024-07-04');

INSERT INTO wintergirls (name, image_url, price, quantity, delivery_date)
VALUES 
('Fall winter newborn baby girls clothes outer wear', 'https://ae01.alicdn.com/kf/S592da33ab2424603aa398cfa4203eb48J/Fall-winter-newborn-baby-girls-clothes-outer-wear-fleece-warm-cotton-dress-for-girls-baby-clothing.jpg', 899, 1, '2024-07-02');

INSERT INTO wintergirls(name, image_url, price, quantity, delivery_date)
VALUES 
('Girls Winter Wear top', 'https://chasevalue.pk/cdn/shop/products/IMG_9705_e483d5fc-df28-4e69-b97e-bd04a9a93b18_grande.jpg?v=1664622635', 999, 1, '2024-07-01');

INSERT INTO wintergirls(name, image_url, price, quantity, delivery_date)
VALUES 
('Gearing Up for Winters Dress your Kids and Toddlers For the Cold', 'https://www.pinkblueindia.com/blog/wp-content/uploads/2016/10/winter-fur-jackets-and-coats-toddlers.jpg', 899, 1, '2024-07-02');

select * from wintergirls;