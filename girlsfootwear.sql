CREATE TABLE girlsfootwear(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    quantity INT NOT NULL,
    delivery_date DATE NOT NULL
);
INSERT INTO girlsfootwear(name, image_url, price, quantity, delivery_date)
VALUES 
('White Text Clogs', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQbkzVw7Jteq62GUTtfTfAtLqpWOzoJoG1UfPoDLA2pcaVczEbyyJH2-Wsk00YeduzJqLqNqwW7dYI_Ca_gDxPS4qCfDNjlH6ql_jRJkuXDD81rTPESXzxxaw&usqp=CAc', 629, 1, '2024-07-01');
INSERT INTO girlsfootwear(name, image_url, price, quantity, delivery_date)
VALUES 
('Baby Footprint Booties', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQem_VoPtcjMYwkgy3RrqLdM37sqpZWcYDDA_NsUpBIVJyZJDZu75dloI47B0G_r1qLHhtclQouGPTIUP8gp8r5pkqXiPSfnjCWNEqSZlgGvkw4ypdYSRdkImRfV5j_lZS_CSA4pefefg&usqp=CAc', 399, 1, '2024-07-03');
INSERT INTO girlsfootwear(name, image_url, price, quantity, delivery_date)
VALUES 
('Slip on Booties', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTozKaOa8GrLhbQjLszf8Vu2gILLGANLG8Iv4bmbaONK7PObh_gJpAQc25yGyMHs_xfHsHGgDchnLZ_cZNEhdGPEhOtpM63d4FSU2ojYeU&usqp=CAc', 499, 1, '2024-07-01');
INSERT INTO girlsfootwear(name, image_url, price, quantity, delivery_date)
VALUES 
('Pink Clogs', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/16158195a.webp', 599, 1, '2024-07-03');
INSERT INTO girlsfootwear(name, image_url, price, quantity, delivery_date)
VALUES 
('Bow Applique Booties', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/15485313a.webp', 499, 1, '2024-07-03');
INSERT INTO girlsfootwear(name, image_url, price, quantity, delivery_date)
VALUES 
('Sock Shoes with flower Applique', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/16418648a.webp', 299, 1, '2024-07-01');
INSERT INTO girlsfootwear(name, image_url, price, quantity, delivery_date)
VALUES 
('Sock Shoes with kitty Applique', 'https://cdn.fcglcdn.com/brainbees/images/products/438x531/16418651a.webp', 299, 1, '2024-07-03');
INSERT INTO girlsfootwear(name, image_url, price, quantity, delivery_date)
VALUES 
('Velcro Closure Booties', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTucgeVsDHitihfRwB6PBSckdeDTHo22vV0M_mZdA13q5QgqL8qY6vRzbqtQVdbDJn72JODUarPZzX5yXabpKhTRHka8ypTCeaUZv73Jb0&usqp=CAc', 499, 1, '2024-07-01');
select * from girlsfootwear;