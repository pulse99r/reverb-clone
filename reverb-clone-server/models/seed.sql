INSERT INTO rc_customers (
    f_name, m_name, l_name, email, 
    password_hash, display_name, create_dt, last_updated
) VALUES
    ('Kenti', 'R', 'Johnson', 'kentijohnson@gmaill.com', '12345678', 'Kenti', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), 
    ('Monique', '', 'Johnson', 'monica@gmaill.com', '22345678', 'Mo Unique', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), 
    ('Elizabeh', '', 'Banks', 'effietrinket.com',  '32345678', 'Beth', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Stephen', 'R', 'Donaldson', 'steven@@covanant.com',  '42345678', 'Covanant',  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


INSERT INTO rc_address (
    customer_id, street_1, street_2, apt_num, city, state, postal_code, 
    adddress_type, /* B=billing, D=delivery, G=gift */ 
    create_dt, last_updated) VALUES 
    (1,'360 West 34th Street','','10J', 'New York','NY','10010', 'BD', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, '17 East 9th Street','','103', 'New York','NY','10103', 'B', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, '418 Plaza N.W.','','103', 'Hoboken','NJ','00705', 'D', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, '189 West 143rd Street','','6B', 'New York','NY','10018', 'BD', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
    

INSERT INTO rc_phone (
    customer_id, phone_num,
    phone_type,
    /* home, cell, work */
    preferred_phone, create_dt, last_updated
) VALUES 
(1, '123456789', 'cell', TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(1, '123456789', 'home', NULL, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(1, '123456789', 'work', NULL, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(2, '203456789', 'cell', TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(2, '223456789', 'work', NULL, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(3, '323456789', 'cell', TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(4, '323456789', 'cell', TRUE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO rc_images (customer_id, img_location, img_caption, create_dt) VALUES 
(

);


SELECT c.f_name, c.m_name, c.l_name, c.password_hash, addr.street_1, ph.phone_num, ph.phone_type, ph.preferred_phone FROM rc_customers AS c 
JOIN rc_address AS addr ON addr.customer_id = c.id
JOIN rc_phone as ph on ph.customer_id = c.id
WHERE ph.preferred_phone=TRUE;



/*
    createdb raymondjohnson
    psql -U raymondjohnson -d postgres
*/