DROP TABLE IF EXISTS 'shop';
DROP TABLE IF EXISTS 'product';
DROP TABLE IF EXISTS 'warehouse';
DROP TABLE IF EXISTS 'worker';
CREATE TABLE shop (
id INTEGER PRIMARY KEY,
name VARCHAR(255) UNIQUE,
balance FLOAT NOT NULL);
INSERT INTO 'shop' VALUES(1,'пятерочка',31);
INSERT INTO 'shop' VALUES(2,'перекресток',133);
CREATE TABLE product (
id INTEGER PRIMARY KEY,
name VARCHAR(255) UNIQUE,
price FLOAT NOT NULL);
INSERT INTO 'product' VALUES(1,'молоко',100);
INSERT INTO 'product' VALUES(2,'хлеб',25);
INSERT INTO 'product' VALUES(3,'хлеб ржаной',30);
CREATE TABLE warehouse (
shop_id INTEGER REFERENCES shop (id),
product_id INTEGER REFERENCES product (id),
quantity INTEGER NOT NULL,
PRIMARY KEY (shop_id, product_id));
INSERT INTO 'warehouse' VALUES(1,2,10);
INSERT INTO 'warehouse' VALUES(2,1,30);
INSERT INTO 'warehouse' VALUES(1,1,20);
CREATE TABLE worker (
worker_id INTEGER PRIMARY KEY,
shop_id INTEGER REFERENCES product (id),
name VARCHAR(255),
salary INTEGER NOT NULL,
position VARCHAR(255));
INSERT INTO 'worker' VALUES(10,2,'Даниил Золотой',20000,'продавец-консультант');
INSERT INTO 'worker' VALUES(16,1,'Я',40,'продавец-стажер');
INSERT INTO 'worker' VALUES(31,1,'шошкин',2,'щетка для поломоечной машины керхер');
