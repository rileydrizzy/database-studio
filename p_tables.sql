CREATE TABLE customers (
    customers_id INT PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    email VARCHAR(60),
    location text NOT NULL
);
-- TODO ADD DATE TO THE ORDER_DATE to get date auto
CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    customers_id INT,
    order_date date NOT NULL,
    total_amount numeric(10, 2) check (total_amount > 0),
    FOREIGN KEY (customers_id) references customers(customers_id)
);
CREATE TABLE meal (
    meal_id INT PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    category VARCHAR(60) NOT NULL
);
CREATE TABLE order_details (
    order_id INT,
    meal_id INT,
    quantity INT,
    -- composite key
    PRIMARY KEY(order_id, meal_id),
    FOREIGN KEY(order_id) references orders(order_id),
    FOREIGN KEY(meal_id) references meal(meal_id)
);
-- TODO RATING DATA TYPE
CREATE TABLE rating(
    rating_id INT PRIMARY KEY,
    order_id INT,
    rating INT,
    comments text,
    FOREIGN KEY (order_id) references orders(order_id)
);
-- Insert statements for the table
INSERT INTO customers
VALUES (419, 'Ladipo', 'test@gmail.com', 'New York'),
    (525, 'James', 'james@yahoo.com', 'Lagos');
INSERT INTO customers(customers_id, name, location)
VALUES (642, 'Smith', 'Abuja'),
    (4562, 'Simi', 'Canada');
INSERT INTO customers (customers_id, name, email, location)
VALUES (
        1,
        'John Doe',
        'john.doe@example.com',
        '123 Maple St, New York, NY'
    ),
    (
        2,
        'Jane Smith',
        'jane.s@example.com',
        '456 Oak Ave, Los Angeles, CA'
    ),
    (
        3,
        'Jade Kosoko',
        'm.brown@testmail.com',
        '789 Pine Rd, Chicago, IL'
    ),
    (
        4,
        'Emily Davis',
        'emily.d@example.com',
        '321 Elm St, Houston, TX'
    );
INSERT INTO meal (meal_id, name, category)
VALUES (1, 'Cheeseburger Deluxe', 'Fast Food'),
    (2, 'Pepperoni Pizza', 'Italian'),
    (3, 'Caesar Salad', 'Healthy'),
    (4, 'Chicken Tikka Masala', 'Indian'),
    (5, 'Sushi Platter', 'Japanese'),
    (6, 'Chicken Suya', 'Nigeria'),
    (7, 'Pizza Chicken', 'Nigeria'),
    (8, 'chicken Pie', 'Nigeria');
INSERT INTO orders (order_id, customers_id, order_date, total_amount)
VALUES (101, 1, '2023-10-01', 25.50),
    (102, 2, '2023-10-02', 45.00),
    (103, 1, '2023-10-05', 12.00),
    (104, 3, '2023-10-06', 60.75),
    (105, 4, '2023-10-07', 30.00);
INSERT INTO orders (order_id, customers_id, order_date, total_amount)
VALUES (106, 2, '2023-10-10', 55.00),
    -- Jane buys a large meal
    (107, 4, '2023-10-12', 15.50),
    -- Emily buys a quick lunch
    (108, 1, '2023-10-15', 85.00),
    -- John buys a group dinner
    (109, 3, '2023-10-18', 22.00),
    -- Michael buys dinner
    (110, 2, '2023-10-20', 12.00),
    -- Jane buys a salad
    (111, 4, '2023-10-21', 9.50),
    -- Emily buys a snack
    (112, 1, '2023-10-22', 40.00);
-- John buys dinner
INSERT INTO order_details (order_id, meal_id, quantity)
VALUES (101, 1, 2),
    -- Order 101 included 2 Cheeseburgers
    (101, 3, 1),
    -- Order 101 included 1 Salad
    (102, 2, 2),
    -- Order 102 included 2 Pizzas
    (103, 3, 1),
    -- Order 103 included 1 Salad
    (104, 4, 1),
    -- Order 104 included 1 Curry
    (104, 5, 2),
    -- Order 104 included 2 Sushi Platters
    (105, 1, 3);
-- Order 105 included 3 Cheeseburgers
INSERT INTO order_details (order_id, meal_id, quantity)
VALUES -- Order 106 (Jane)
    (106, 4, 2),
    -- 2x Chicken Tikka Masala
    (106, 2, 1),
    -- 1x Pepperoni Pizza
    -- Order 107 (Emily)
    (107, 5, 1),
    -- 1x Sushi Platter
    -- Order 108 (John - Group Order)
    (108, 1, 5),
    -- 5x Cheeseburgers
    (108, 2, 3),
    -- 3x Pizzas
    -- Order 109 (Michael)
    (109, 1, 1),
    -- 1x Cheeseburger
    (109, 3, 1),
    -- 1x Caesar Salad
    -- Order 110 (Jane)
    (110, 3, 1),
    -- 1x Caesar Salad
    -- Order 111 (Emily)
    (111, 1, 1),
    -- 1x Cheeseburger
    -- Order 112 (John)
    (112, 4, 2);
-- 2x Chicken Tikka Masala
INSERT INTO rating (rating_id, order_id, rating, comments)
VALUES (1, 101, 5, 'Great food and fast delivery!'),
    (2, 102, 4, 'Pizza was good but slightly cold.'),
    (3, 104, 5, 'Absolutely delicious sushi.'),
    (4, 105, 2, 'Burgers were burnt.');
INSERT INTO rating (rating_id, order_id, rating, comments)
VALUES (
        5,
        106,
        5,
        'Best curry I have had in a long time!'
    ),
    (
        6,
        108,
        3,
        'Food was good but delivery took over an hour.'
    ),
    (7, 111, 1, 'Order arrived cold and messy.'),
    (8, 112, 4, 'Very tasty.');
CREATE TABLE patient (
    patient_id INT PRIMARY KEY,
    name VARCHAR(60),
    address text,
    data_of_birth date
);
CREATE TABLE appointment(
    patient_id INT,
    appointment_id INT,
    appointment_date date,
    reason text,
    PRIMARY KEY(patient_id, appointment_id),
    FOREIGN KEY(patient_id) references patient(patient_id)
);
CREATE TABLE doctor (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(60),
    speciality VARCHAR(30) NOT NULL
);
CREATE TABLE consultation (
    patient_id INT,
    doctor_id INT,
    consultation_date date NOT NULL,
    PRIMARY KEY(patient_id, doctor_id),
    FOREIGN KEY(patient_id) references patient(patient_id),
    FOREIGN KEY(doctor_id) references doctor(doctor_id)
);
INSERT INTO doctor VALUES (245, 'Jade Kosoko', 'Sugeon'),
    (45, 'Ladi', 'General Doctor'),
    (23, 'Dipo', 'Dentist');



 