INSERT INTO salesperson(
    salesperson_id,
    first_name,
    last_name
)VALUES(
    3,
    'Travis',
    'Morris'
);
INSERT INTO salesperson(
    salesperson_id,
    first_name,
    last_name
)VALUES(
    20,
    'Anna',
    'Morris'
);
INSERT INTO salesperson(
    salesperson_id,
    first_name,
    last_name
)VALUES(
    31,
    'Wade',
    'Morris'
);
INSERT INTO cars(
    car_id,
    used_car
)VALUES(
    1,
    'equinox'
);
INSERT INTO cars(
    car_id,
    new_car
)VALUES(
    2,
    'sonata'
);
INSERT INTO cars(
    car_id,
    used_car
)VALUES(
    3,
    'palisade'
);
INSERT INTO car_service(
    service_invoice,
    service_history,
    mechanic_id,
    car_id
)VALUES(
    1000120,
    'oil change',
    5,
    1
);
INSERT INTO car_service(
    service_invoice,
    service_history,
    mechanic_id,
    car_id
)VALUES(
    1000121,
    'new tires',
    5,
    2
);
INSERT INTO car_service(
    service_invoice,
    service_history,
    mechanic_id,
    car_id
)VALUES(
    1000122,
    'fixed bumper',
    1,
    3
);
INSERT INTO customer(
    first_name,
    last_name,
    phone,
    email,
    did_Buy,
    service_id
)VALUES(
    'shoha',
    'tsuchida',
    888-210-6161,
    's.t@codingtemple.com',
    True,
    1
);
INSERT INTO customer(
    first_name,
    last_name,
    phone,
    email,
    did_Buy,
    service_id
)VALUES(
    'brandt',
    'calson',
    888-313-5162,
    'b.c@codingtemple.com',
    True,
    2
);
INSERT INTO customer(
    first_name,
    last_name,
    phone,
    email,
    did_Buy,
    service_id
)VALUES(
    'blair',
    'talley',
    888-210-6161,
    'b.t@codingtemple.com',
    True,
    3
);
INSERT INTO invoices(
    isPaid,
    customer_id,
    salesperson_id,
    car_id,
    service_id
)VALUES(
    True,
    1,
    3,
    1,
    1
);
INSERT INTO invoices(
    isPaid,
    customer_id,
    salesperson_id,
    car_id,
    service_id
)VALUES(
    False,
    2,
    20,
    2,
    2
);
INSERT INTO invoices(
    isPaid,
    customer_id,
    salesperson_id,
    car_id,
    service_id
)VALUES(
    True,
    3,
    31,
    3,
    3
);