use REAL_ESTATES;

/* Задача 1. Да се изведе информация за имената, фамилиите и телефонните номера на брокерите.  */
--SELECT agent_pname, agent_lname, agent_contact
--FROM agents;

/* Задача 2. Да се изведе информация за огледите, насрочени за дата след 8 февруари 2022 г.  */
--SELECT *
--FROM appointments
--WHERE appointment_date > '2022-02-08';

/* Задача 3. Да се изведат номерата на офертите за имоти, построени между 2010 и 2020 г.  */
--SELECT property_id
--FROM properties
--WHERE property_year_built BETWEEN 2010 AND 2020;

/* Задача 4. Да се изведе информация за имотите с местоположение Варна, Бургас, София, Пловдив.  */
--SELECT *
--FROM properties
--WHERE city IN('Варна', 'Бургас', 'София', 'Пловдив');

/* Задача 5. Да се изведе информация за имотите, които имат снимки.  */
--вариант 1
--SELECT *
--FROM properties
--WHERE property_id IN (SELECT property_id FROM images);

--вариант 2
--SELECT *
--FROM properties
--WHERE EXISTS (SELECT * FROM images WHERE images.property_id = properties.property_id);

/* Задача 6. Да се изведе информация за брокерите, които нямат нито един имот за продажба.  */
--SELECT *
--FROM agents
--WHERE agent_id NOT IN (SELECT agent_id FROM properties);

/* Задача 7. Да се изведе информация за клиентите, чиято фамилия съдържа низа „Иван“.  */
--SELECT * 
--FROM clients
--WHERE client_lname LIKE 'Иван%';

/* Задача 8. Да се изведе имената, фамилиите и телефонните номера на клиентите, за които телефонния номер започва с 0888.  */
--SELECT client_pname, client_lname, client_contact
--FROM clients
--WHERE client_contact LIKE '0888%';

/* Задача 9. Да се изведе информация за местоположенията, за които не е въведена информация за населението.  */
--SELECT *
--FROM locations
--WHERE population IS NULL;

/* Задача 10. Да се изведе информация за огледите, за които не е известно дали са проведени.  */
--SELECT *
--FROM appointments
--WHERE appointment_status IS NUll;

/* Задача 11. Да се изведат имената и описанията на градовете, които са в близост до море и са с население между 10 000 и 40 000.  */
--SELECT city, description
--FROM locations
--WHERE sea_nearby = 1 AND population BETWEEN 10000 AND 40000;

/* Задача 12. Да се изведе информация за имотите с жилищна площ, по-голяма от 70 кв. м., построени между 2010 и 2020 г., които имат гараж. */
SELECT * 
FROM properties 
WHERE property_living_area > 70 AND (property_year_built BETWEEN 2010 AND 2020) AND property_garage IS NOT NULL;


