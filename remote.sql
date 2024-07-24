CREATE TABLE remote(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    quantity INT NOT NULL,
    delivery_date DATE NOT NULL
);

select *from remote;
INSERT INTO remote(name, image_url, price, quantity, delivery_date)
VALUES 
('Remote Control Robot', 'https://tse3.mm.bing.net/th?id=OIP.ILVlTLVMJxZ11vR3j1EQMAHaH7&pid=Api&P=0&h=180', 500, 1, '2024-07-03');

INSERT INTO remote(name, image_url, price, quantity, delivery_date)
VALUES 
('Mini Car', 'https://tse3.mm.bing.net/th?id=OIP.s0yXykoH4_WTkwk67yLwQAHaEq&pid=Api&P=0&h=180', 450, 1, '2024-07-15');


INSERT INTO remote(name, image_url, price, quantity, delivery_date)
VALUES 
('Remote Control Helicopter', 'https://tse1.mm.bing.net/th?id=OIP.wrzQF0Q5bTADWIEE7TDwNgHaHa&pid=Api&P=0&h=180', 1000, 1, '2024-07-09');


INSERT INTO remote(name, image_url, price, quantity, delivery_date)
VALUES 
('Electric Boat', 'https://tse4.mm.bing.net/th?id=OIP.BYlQSwy8sCLSpi2Kn_7cOgHaHa&pid=Api&P=0&h=180', 1200, 1, '2024-07-03');



INSERT INTO remote(name, image_url, price, quantity, delivery_date)
VALUES 
('Aeros Remote Car', 'https://tse2.mm.bing.net/th?id=OIP.UB9XTiMpqo1-qppwV_-VDQHaHa&pid=Api&P=0&h=180', 1500, 1, '2024-07-12');

INSERT INTO remote(name, image_url, price, quantity, delivery_date)
VALUES 
('Remote Control Dinosaur', 'https://tse1.mm.bing.net/th?id=OIP.TDywlJ7PYlT3ClAk7floowHaFg&pid=Api&P=0&h=180', 2000, 1, '2024-08-20');

INSERT INTO remote(name, image_url, price, quantity, delivery_date)
VALUES 
('Remote Control Dog', 'https://tse1.mm.bing.net/th?id=OIP.nuLLkXJKNvxoIfqMiwTJRgHaHa&pid=Api&P=0&h=180', 1299, 1, '2024-09-03');

INSERT INTO remote(name, image_url, price, quantity, delivery_date)
VALUES 
('Tronic Stunt Car', 'https://tse4.mm.bing.net/th?id=OIP.GcaB6P3Yg4pEhtagRl2kTQHaHa&pid=Api&P=0&h=180', 2300, 1, '2024-07-20');