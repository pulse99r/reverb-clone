\c data_wharehouse_dev;


DROP TABLE IF EXISTS rc_customers;
CREATE TABLE rc_customers(
    id SERIAL PRIMARY KEY,
    f_name VARCHAR(15),
    m_name VARCHAR(15),
    l_name VARCHAR(15),
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    display_name VARCHAR(64),
    create_dt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_updated TIMESTAMP DEFAULT NOW()
);

DROP TABLE IF EXISTS rc_address;
CREATE TABLE rc_address(
    id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    street_1 VARCHAR(40),
    street_2 VARCHAR(40),
    apt_num VARCHAR(10),
    city VARCHAR(40),
    state VARCHAR(2),
    postal_code VARCHAR(9),
    adddress_type VARCHAR(8),
    /* billing, delivery, gift */
    create_dt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


DROP TABLE IF EXISTS rc_phone;
CREATE TABLE rc_phone(
    id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    phone_num INTEGER,
    phone_type VARCHAR(8),
    /* home, cell, work */
    preferred_phone BOOLEAN DEFAULT NULL,
    create_dt TIMESTAMP DEFAULT NOW(),
    last_updated TIMESTAMP DEFAULT NOW()
);

DROP TABLE IF EXISTS rc_images;;

CREATE TABLE rc_images(
    id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    img_location VARCHAR(255),
    img_caption VARCHAR(255),
    create_dt TIMESTAMP DEFAULT NOW()
);


/*


*/