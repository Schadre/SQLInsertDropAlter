-- Primary Keys can't be empty or duplicated 
-- Customer Table creation 
create table customer_shay(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

-- Seller Table creation 
create table seller(
	seller_id SERIAL primary key,
	brand_name VARCHAR(150),
	contact_number VARCHAR(15),
	address VARCHAR(150)
);

-- Inventory Table  creation 
create table inventory_shay(
	upc SERIAL primary key,
	product_amount INTEGER
);

-- Order table creation
create table order_(
	order_id SERIAL primary key,
	order_date DATE default CURRENT_DATE,
	sub_total numeric(8,2),
	total_cost numeric(10, 2),
	upc INTEGER not null, -- not null means this can't be empty
	foreign key(upc) references inventory_shay(upc)
);

-- Product table creation 
create table product(
	item_id SERIAL primary key,
	amount numeric(5,2),
	prod_name VARCHAR(100),
	seller_id INTEGER not null,
	upc INTEGER not null,
	foreign key(seller_id) references seller(seller_id),
	foreign key(upc) references inventory_shay(upc)
);

-- Cart table creation
create table cart(
	cart_id SERIAL primary key,
	customer_id INTEGER not null,
	order_id INTEGER not null,
	foreign key(customer_id) references customer_shay(customer_id),
	foreign key(order_id) references order_(order_id)
);

