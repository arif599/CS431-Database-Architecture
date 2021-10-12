-- Inserting data into collection
INSERT INTO shaika.collection(edition_id, edition_number, new_price, new_pages, new_format, new_language) VALUES
	-- adding new editions for book with asin 0060935464
    ('0060935464', 1, 14.99, 458, 'Book', 'English'),
    ('0060935464', 2, 14.99, 335, 'Book', 'Spanish'),
    ('0060935464', 3, 20.99, 458, 'Audiobook', 'English'),
    ('0060935464', 4, 20.99, 335, 'Audiobook', 'Spanish'),
    -- adding new editions for book with asin 0571329098
    ('0571329098', 1, 7.99, 124, 'Book', 'English'),
    ('0571329098', 2, 7.99, 114, 'Book', 'Spanish'),
    ('0571329098', 3, 12.99, 124, 'Audiobook', 'English'),
    ('0571329098', 4, 12.99, 114, 'Audiobook', 'Spanish');

-- Inserting data for lamp product
INSERT INTO shaika.lamp(product_asin, title, description, inventory, material) VALUES
    ('lamp001', 'Mirror Lamp', 'Perfect lamp for Mirrors', 5, 'Plastic'),
    ('lamp002', 'Desk Lamp', 'Perfect lamp for Desks', 4, 'Wood'),
    ('lamp003', 'Bathroom Lamp', 'Perfect lamp for Bathrooms', 10, 'Wood'),
    ('lamp004', 'Outdoor Lamp', 'Perfect lamp for Outdoors', 7, 'Wood'),
    ('lamp005', 'Reading Lamp', 'Perfect lamp for Reading', 5, 'Plastic');

-- Inserting size and its price for each lamp
INSERT INTO shaika.lamppairs(lamp_id, size, price) VALUES 
    -- different sizes and prices for lamp001
    ('lamp001', 's', '9.99'),
    ('lamp001', 'm', '12.99'),
    ('lamp001', 'l', '25.99'),
    -- different sizes and prices for lamp002
    ('lamp002', 's', '14.99'),
    ('lamp002', 'm', '19.99'),
    ('lamp002', 'l', '29.99'),
    -- different sizes and prices for lamp003
    ('lamp003', 's', '13.99'),
    ('lamp003', 'm', '15.99'),
    ('lamp003', 'l', '25.99'),
    -- different sizes and prices for lamp004
    ('lamp004', 's', '19.99'),
    ('lamp004', 'm', '39.99'),
    ('lamp004', 'l', '59.99'),
    -- different sizes and prices for lamp005
    ('lamp005', 's', '9.99'),
    ('lamp005', 'm', '19.99'),
    ('lamp005', 'l', '29.99');