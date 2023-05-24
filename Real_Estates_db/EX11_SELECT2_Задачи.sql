use REAL_ESTATES;
/*  Извличане на информация - групиране, сортиране, агрегатни функции */

/* Да се изведат данните на клиентите сортирани низходящо по име. */
/*SELECT *
FROM clients
ORDER BY client_pname DESC;*/

/* Да се изведат данните на клиентите сортирани низходящо по име и възходящо по фамилия. */
/*SELECT * 
FROM clients
ORDER BY client_pname DESC, client_lname ASC;*/

/* Да се изведе информация за имената, фамилиите и адресите на брокерите. Резултатът да е сортиран във възходящ ред по фамилия. */
/*SELECT agent_pname, agent_lname, agent_address
FROM agents
ORDER BY agent_lname ASC;*/

/* Да се изведе информация за населените места. Резултатът да е сортиран в низходящ ред по население. */
/*SELECT *
FROM locations
ORDER BY population DESC;*/

/* Да се изведат номерата на брокерите, които са извършвали огледи. Да се игнорират повтарящите се номера. */
/*SELECT DISTINCT agent_id
FROM appointments
WHERE appointment_status = 1;*/

/* Да се изведе информация за градовете и населението, като градовете се категоризират като Морски, Планински и Без особености. */
/*SELECT city AS Град, population AS Население,
	CASE
	 WHEN sea_nearby = 1 THEN 'Морски'
	 WHEN mountain_nearby = 1 THEN 'Планински'
	 ELSE 'Без особенности'
	END AS Тип
FROM locations*/

/* Да се изведе броят на имотите по местоположение. */
/*SELECT COUNT (*) AS 'Брой на имотите'
FROM properties
GROUP BY city;*/


/* Да се изведе местоположението и броя на имотите в него. */
/*SELECT city AS 'Град', COUNT (*) AS 'Брой на имотите'
FROM properties
GROUP BY city;*/

/* Да се изведе местоположението и броя на имотите в него, само ако броят имоти е по-голям от две. */
/*SELECT city AS 'Град', COUNT (*) AS 'Брой на имотите'
FROM properties
GROUP BY city
HAVING COUNT (*) > 2;*/

/* Да се изведе информация за средната площ и средната цена на всички имоти.  */
/*SELECT AVG (property_living_area) AS [Средна площ], AVG (property_price) AS [Средна цена на имота]
FROM properties;*/

/* Да се изведе информация за номерата на офертите, за които има налични снимки, и съответния брой снимки. 
Да се зададат подходящи имена за колоните и резултатът да се запише в нова таблица. */
/*SELECT property_id AS 'Номер на оферта', COUNT (property_id) AS 'Брой на снимки'
INTO current_info --нова таблица--
FROM images
GROUP BY property_id;*/

/* За всеки град да се изведе колко имоти има за продажба и каква е средноаритметичната цена на офертите. */
--SELECT city AS 'Град', COUNT (*) AS 'Брой оферти', AVG(property_price) AS 'Средна цена на имота, лв'
--FROM properties
--GROUP BY city;

/* За всеки град да се изведе колко имоти има за продажба и каква е средноаритметичната цена на офертите. 
В резултатното множество да участват само градовете, за които има налични повече от 2 оферти. */
--SELECT city AS 'Град', COUNT (*) AS 'Брой оферти', AVG(property_price) AS 'Средна цена на имота, лв'
--FROM properties
--GROUP BY city
--HAVING COUNT (*) > 2;

/* Да се изведе информация за средната площ и средната цена на имотите. Резултатът да е обобщен по градове. */
--SELECT city AS 'Град', AVG(property_living_area) AS 'Средна площ', AVG(property_price) AS 'Средна цена, лв'
--FROM properties
--GROUP BY city;

/* Да се изведе информация за средната площ и средната цена на имотите. Резултатът да е обобщен по градове. 
В резултата да фигурират само тези градове, за които средната цена е по-малка от 200 000 лв. */
SELECT city AS 'Град', AVG(property_living_area) AS 'Средна площ', AVG(property_price) AS 'Средна цена, лв'
FROM properties
GROUP BY city
HAVING AVG(property_price) < 200000;