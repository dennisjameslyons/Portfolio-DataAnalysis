/**Creating my own store, selling undergarments. There is a table for all items, with 5 columns for all pertinent data. 
There are 15 items for sale, and I've used select statements to order the items by price, and a number of statistics about the items.
**/
CREATE TABLE underwear_store (id INTEGER PRIMARY KEY, category TEXT, color TEXT, designer TEXT, price INTEGER, gender TEXT);

INSERT INTO underwear_store VALUES (1, "Athletic", "Blue", "Griller", 23, "Unisex");
INSERT INTO underwear_store VALUES (2, "Everyday", "Tan", "PaulWorks", 24, "Unisex");
INSERT INTO underwear_store VALUES (3, "Nighttime", "Forest", "Lavendrum", 25, "Unisex");
INSERT INTO underwear_store VALUES (4, "Swim", "Blue", "Griller", 26, "Unisex");
INSERT INTO underwear_store VALUES (6, "GoingOut", "Platinum", "Lavendrum", 23, "Unisex");
INSERT INTO underwear_store VALUES (5, "SundayAM", "Glaze", "PaulWorks", 28, "Unisex");
INSERT INTO underwear_store VALUES (7, "Raptured", "Listered", "Lavendrum", 35, "Unisex");
INSERT INTO underwear_store VALUES (8, "Captured", "Orange", "PaulWorks", 35, "Unisex");
INSERT INTO underwear_store VALUES (9, "Tearing", "Glitter", "Lavendrum", 35, "Unisex");
INSERT INTO underwear_store VALUES (10, "StoicBoner", "Dewdrop", "PaulWorks", 22, "Unisex");
INSERT INTO underwear_store VALUES (11, "Out2Lunch", "Black", "Griller", 21, "Unisex");
INSERT INTO underwear_store VALUES (12, "MysteriousP", "Black", "Lavendrum", 35, "Unisex");
INSERT INTO underwear_store VALUES (13, "Summer", "Pink", "Griller", 35, "Unisex");
INSERT INTO underwear_store VALUES (14, "Winter", "Alabaster", "PaulWorks", 35, "Unisex");
INSERT INTO underwear_store VALUES (15, "SummerPM", "Black", "Griller", 35, "Unisex");
SELECT * FROM underwear_store ORDER BY price DESC;



/**-1-Show how many different categories there are**/
SELECT DISTINCT category COUNT FROM underwear_store;
/**-2-Show how many different colors there are**/
SELECT DISTINCT color FROM underwear_store;
/**-3-Show how many different designers there are**/
SELECT DISTINCT designer FROM underwear_store;
/**-4-Show how many different prices there are**/
SELECT DISTINCT price FROM underwear_store;
/**-5-Show how many different gender items there are**/
SELECT DISTINCT gender FROM underwear_store;

/**Max Price**/
SELECT MAX(price) FROM underwear_store;
/**Min Price**/
SELECT MIN(price) FROM underwear_store;


/**Group By results, to show how many unique designers there are and how many times they each appear - improving on the set of 5 above**/
SELECT category, COUNT(*) AS quantity FROM underwear_store GROUP BY category;
/**colors and count of occurrence**/
SELECT color, COUNT(*) AS quantity FROM underwear_store GROUP BY color;
/**designers and count of occurrence**/
SELECT designer, COUNT(*) AS quantity FROM underwear_store GROUP BY designer;
/**prices and count of occurrence**/
SELECT price, COUNT(*) AS quantity FROM underwear_store GROUP BY price;
/**gender styles and count of occurrence**/
SELECT gender, COUNT(*) AS quantity FROM underwear_store GROUP BY gender;
/**Show item with the smallest price**/
SELECT MIN(price) AS SmallestPrice FROM underwear_store;
