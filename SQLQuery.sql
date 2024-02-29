create database mi52

CREATE TABLE Admin (
    admin_id INT PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    password VARCHAR(50),
    full_name VARCHAR(100),
    email VARCHAR(100)
);


CREATE TABLE Menu (
    menu_id INT PRIMARY KEY,
    dish_name VARCHAR(100),
    description TEXT,
    price DECIMAL(10, 2)
);


CREATE TABLE Bill (
    bill_id INT PRIMARY KEY,
    date DATE,
    total_amount DECIMAL(10, 2),
    admin_id INT,
    FOREIGN KEY (admin_id) REFERENCES Admin(admin_id)
);


CREATE TABLE BillDetail (
    detail_id INT PRIMARY KEY,
    bill_id INT,
    menu_id INT,
    quantity INT,
    subtotal DECIMAL(10, 2),
    FOREIGN KEY (bill_id) REFERENCES Bill(bill_id),
    FOREIGN KEY (menu_id) REFERENCES Menu(menu_id)
);
insert into Admin (admin_id,username,password,full_name,email)
VALUES (1, 'admin123', 'adminpassword', 'Admin Name', 'admin@example.com');
INSERT INTO Menu (menu_id, dish_name, description, price)
VALUES (1, 'mi xuong', 'mi,xuong', 45.000),
       (2, 'mi xa xiu', 'mi,xa xiu', 45.000),
       (3, 'mi hoanh thanh', 'mi,xa xiu,hoanh thanh',50.000);
