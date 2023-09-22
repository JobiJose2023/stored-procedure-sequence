DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS aisles;

CREATE TABLE aisles(
id int AUTO_INCREMENT PRIMARY KEY,
name varchar(100),
item_count integer
);

INSERT INTO aisles VALUES (default, 'Pantry', 0),
						(default, 'Freezer', 0),
						(default, 'Health', 0);
					
CREATE TABLE items(
id integer AUTO_INCREMENT PRIMARY KEY,
name varchar(100),
price numeric(5, 2),
inventory_count integer,
aisle_id integer,
FOREIGN KEY (aisle_id) REFERENCES aisles(id)
);

INSERT INTO items values (default, 'Soup', 1.99, 10, 1);
INSERT INTO items VALUES 	(default, 'Bandaids', 2.99, 99, 3),
							(default, 'Popsicles', 5.99, 50, 2),
							(default, 'Can of Soup', 0.99,99, 1),
							(default, 'Heat Pack', 8.99,55, 3),
							(default, 'Frozen Dinner', 4.99, 20, 2),
							(default, 'Crackers', 2.99,45, 1),
							(default, 'Medicine', 8.99, 20, 3),
							(default, 'Chicken Nuggets', 5.99,4, 2),
							(default, 'Hot Sauce', 1.99,10, 1),
							(default, 'Frozen Berries', 3.99, 20, 2),
							(default, 'Bottled Water', 4.99, 30, 1);
								
SELECT * FROM aisles;
SELECT * FROM items;

-- ================================================
DROP TABLE IF EXISTS businesses;

CREATE TABLE IF NOT EXISTS businesses(
	id int auto_increment primary key,
	name varchar(100),
	zip int,
	category varchar(100)
);

INSERT INTO businesses(name, zip, category) VALUES('Polly\'s Cracker Shop', 90304, 'Food');
INSERT INTO businesses(name, zip, category) VALUES('Blue Ogre Board Games and More', 90314, 'Hobby');
INSERT INTO businesses(name, zip, category) VALUES('The Angry Lobster', 90311, 'Food');
INSERT INTO businesses(name, zip, category) VALUES('Filbert Brothers Auto Shop', 90345, 'Service');
INSERT INTO businesses(name, zip, category) VALUES('Trendy Tailoring', 90304, 'Service');
INSERT INTO businesses(name, zip, category) VALUES('Manny\'s Manicures', 90304, 'Service');
INSERT INTO businesses(name, zip, category) VALUES('Hulk\'s Hoagies', 90345, 'Food');
INSERT INTO businesses(name, zip, category) VALUES('Bait and Tackle R Us', 90311, 'Hobby');
INSERT INTO businesses(name, zip, category) VALUES('Shop Til U Drop', 90311, 'Apparel');
INSERT INTO businesses(name, zip, category) VALUES('Cheap Shoes and Stuff', 90314, 'Apparel');

select * from businesses;