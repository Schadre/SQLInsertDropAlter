-- Customer Data
insert into customer_shay(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
)VALUES(
	1,
	'Schadre',
	'Dent',
	'555 Universe Lane Venus, Planet 000000',
	'5555-5555-5555-5555 555 55/55'
);

-- Seller Data
insert into seller(
	seller_id,
	brand_name,
	contact_number,
	address
)VALUES(
	1,
	'Coding Temple LLC',
	'773-5550-4490',
	'222 W Ontario St Chicago, IL'
);

-- Inventory daya
insert into inventory_shay(
	upc,
	product_amount
)VALUES(
	1,
	20.00
);

-- Product Data
insert into product(
	item_id,
	amount,
	prod_name,
	seller_id,
	upc
)VALUES(
	1, 
	20.00,
	'Python 101',
	1,
	1
);

-- Order Data
insert into order_(
	order_id,
	sub_total,
	total_cost,
	upc
)VALUES(
	1,
	40.00, 
	43.50,
	1
);

-- Cart Data
insert into cart(
	cart_id,
	customer_id,
	order_id
)VALUES(
	1, 
	1, 
	1
);

-- Dropped the cart table
drop table cart;

-- Alter table customer_shay 
alter table customer_shay 
add column eye_color VARCHAR(10)

select * from customer_shay