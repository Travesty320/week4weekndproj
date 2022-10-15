CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20)
);
CREATE TABLE cars(
    car_id SERIAL PRIMARY KEY,
    used_cars INTEGER,
    new_cars INTEGER
);
CREATE TABLE car_service(
    -- had to adjust from the pdf from service to car service since service came up blue as a command
    service_id SERIAL PRIMARY KEY,
    service_invoice INTEGER,
    service_history VARCHAR(250),
    mechanic_id INTEGER,
    car_id INTEGER,
    FOREIGN KEY(car_id) REFERENCES cars(car_id)
);
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    phone INTEGER,
    email VARCHAR(20),
    did_Buy BOOLEAN,
    service_id INTEGER,
    FOREIGN KEY (service_id) REFERENCES car_service(service_id)
);
CREATE TABLE invoices(
    invoice_id SERIAL PRIMARY KEY,
    isPaid BOOLEAN,
    customer_id INTEGER,
    salesperson_id INTEGER,
    car_id INTEGER,
    service_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (service_id) REFERENCES car_service(service_id)
);
ALTER TABLE cars
drop used_cars,
drop new_cars;

ALTER TABLE cars
ADD used_car VARCHAR(20),
ADD new_car VARCHAR(20);
-- i dropped the used and new because integer doesnt really make since because the input 
-- would be what type of new or used car, so i readded them with varchar to make them a type of car, im going to be using models instead of makes
