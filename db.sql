CREATE SCHEMA CRUD_DB;

CREATE COLUMN TABLE crud_db.product(
	product_id CHAR(5) PRIMARY KEY,
	product_name CHAR(40) NOT NULL,
	product_category CHAR(30) NOT NULL
	
INSERT INTO crud_db.product VALUES('10059', 'Mineral water 1 L', 'Beverages');
INSERT INTO crud_db.product VALUES('10047', 'Orange syrup 700 mL', 'Beverages');
INSERT INTO crud_db.product VALUES('10072', 'Strawberry juice 350 mL', 'Beverages');
INSERT INTO crud_db.product VALUES('10033', 'Lemon Soda 500 mL', 'Beverages');
INSERT INTO crud_db.product VALUES('20073', 'Yogurt 300 mL', 'Dairy Product');
INSERT INTO crud_db.product VALUES('20092', 'Cheese bar 250 gram', 'Dairy Product');
INSERT INTO crud_db.product VALUES('20025', 'Chocolate milk 900 mL', 'Dairy Product');
INSERT INTO crud_db.product VALUES('20027', 'Powdered milk 800 gram', 'Dairy Product');
INSERT INTO crud_db.product VALUES('30088', 'Talcum powder 200 gram', 'Healthcare');
INSERT INTO crud_db.product VALUES('30036', 'Cotton buds 100 pcs', 'Healthcare');
INSERT INTO crud_db.product VALUES('30036', 'Liquid anti-septic 100 mL', 'Healthcare');
INSERT INTO crud_db.product VALUES('30063', 'Skin soap for acne 90 gram', 'Healthcare');
INSERT INTO crud_db.product VALUES('30014', 'Vitamin C tablet 300 mgram', 'Healthcare');
INSERT INTO crud_db.product VALUES('30091', 'Eye drop 50 mL', 'Healthcare');
INSERT INTO crud_db.product VALUES('40015', 'A4 paper rim', 'Office Supplies');
INSERT INTO crud_db.product VALUES('40022', 'Whiteboard black marker', 'Office Supplies');
INSERT INTO crud_db.product VALUES('40054', 'Office table', 'Office Supplies');
INSERT INTO crud_db.product VALUES('40068', 'Fountain pen', 'Office Supplies');
INSERT INTO crud_db.product VALUES('40078', 'Ruler 30 cm', 'Office Supplies');
INSERT INTO crud_db.product VALUES('50095', 'Chicken curry seasoning 25 gram', 'Seasonings');
INSERT INTO crud_db.product VALUES('50095', 'Chilli powder 200 gram', 'Seasonings');
INSERT INTO crud_db.product VALUES('50071', 'Black pepper 100 gram', 'Seasonings');
INSERT INTO crud_db.product VALUES('50087', 'Kerinci cinnamon', 'Seasonings');
INSERT INTO crud_db.product VALUES('50039', 'Chile peppers 100 gram', 'Seasonings'); 
INSERT INTO crud_db.product VALUES('50048', 'Yellow mustard 150 gram', 'Seasonings'); 
INSERT INTO crud_db.product VALUES('60049', 'Vanila bar soap 90 gram', 'Toiletries'); 
INSERT INTO crud_db.product VALUES('60017', 'Kemiri shampoo 300 mL', 'Toiletries'); 
INSERT INTO crud_db.product VALUES('60037', 'Facial tissue 100 gram', 'Toiletries'); 
INSERT INTO crud_db.product VALUES('60094', 'Rose liquid detergen 770 gram', 'Toiletries'); 

