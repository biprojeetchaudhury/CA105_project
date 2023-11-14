CREATE DATABASE IF NOT EXISTS train_schedule;

USE train_schedule;

CREATE TABLE routes (
    id INT NOT NULL AUTO_INCREMENT,
    route VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE dates (
    id INT NOT NULL AUTO_INCREMENT,
    date DATE NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE timings (
    id INT NOT NULL AUTO_INCREMENT,
    departure_time TIME NOT NULL,
    arrival_time TIME NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE trains (
    id INT NOT NULL AUTO_INCREMENT,
    route_id INT NOT NULL,
    date_id INT NOT NULL,
    timing_id INT NOT NULL,
    distance INT NOT NULL,
    time_taken TIME NOT NULL,
    operating_days VARCHAR(255) NOT NULL,
    coach_number VARCHAR(255) NOT NULL,
    staff_id INT NOT NULL,
    driver_name VARCHAR(255) NOT NULL,
    contact_number VARCHAR(255) NOT NULL,
    city_of_residence VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (route_id) REFERENCES routes (id),
    FOREIGN KEY (date_id) REFERENCES dates (id),
    FOREIGN KEY (timing_id) REFERENCES timings (id)
);

INSERT INTO routes (route) VALUES
    ('Mumbai Central - Gandhinagar'),
    ('New Delhi - Chandigarh'),
    ('Secunderabad - Visakhapatnam'),
    ('Mumbai - Sainagar Shirdi'),
    ('Pune - Aurangabad'),
    ('Ahmedabad - Vadodara'),
    ('Hyderabad - Chennai'),
    ('Bengaluru - Mysuru'),
    ('Kolkata - Howrah'),
    ('Guwahati - Tezpur');

INSERT INTO dates (date) VALUES
    ('2023-10-07'),
    ('2023-10-08'),
    ('2023-10-09'),
    ('2023-10-10'),
    ('2023-10-11'),
    ('2023-10-12'),
    ('2023-10-13');

INSERT INTO timings (departure_time, arrival_time) VALUES
    ('06:00', '11:40'),
    ('07:00', '13:10'),
    ('08:00', '16:30'),
    ('09:00', '14:20'),
    ('10:00', '14:30'),
    ('11:00', '16:00'),
    ('12:00', '21:00'),
    ('13:00', '16:00'),
    ('14:00', '14:45'),
    ('15:00', '21:00');

INSERT INTO trains (route_id, date_id, timing_id, distance, time_taken, operating_days, coach_number, staff_id, driver_name, contact_number, city_of_residence) VALUES
    (1, 1, 1, 548, '05:40', '6 days a week except Sundays', 'WX1234', 'K0012', 'Ketan Vibhuti', '9812131415', 'Pune'),
    (2, 1, 2, 412, '06:10', '6 days a week except Thursdays', 'WY5678', 'L0013', 'Mohan Singh', '9876543210', 'Delhi'),
    (3, 2, 3, 500, '08:30', 'once a week (every Sunday)', 'WZ9012', 'M0014', 'Venkatesh', '9900112233', 'Hyderabad'),
    (4, 1, 4, 248, '05:20', '6 days in a week, but not on Tuesdays', 'WA3456', 'N0015', 'Ramu', '987654
