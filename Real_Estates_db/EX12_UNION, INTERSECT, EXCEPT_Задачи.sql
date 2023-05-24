use REAL_ESTATES;

             /* Обединение (UNION), сечение(INTERSECT) и разлика(EXCEPT) на таблици. */

/* Имената на всички брокери и клиенти. */
--SELECT agent_pname AS 'Всички имена'
--FROM agents
--UNION 
--SELECT client_pname 
--FROM clients;

/* Имената на брокерите и клиентите, сортирани по име във възходящ ред. Резултатът се записва в нова таблица с име names. */
--SELECT agent_pname AS 'Всички имена'
--INTO names
--FROM agents
--UNION 
--SELECT client_pname 
--FROM clients
--ORDER BY 1 ASC;

/* Да се изведе име, фамилия и адрес на всички брокери и клиенти на агенцията за недвижими имоти. */
--SELECT agent_pname, agent_lname, agent_address AS 'Всички имена'
--FROM agents
--UNION 
--SELECT client_pname, client_lname, client_address
--FROM clients;

/* Да се изведе име, фамилия и адрес на всички брокери и клиенти на агенцията за недвижими имоти, които са от София. */
--SELECT agent_pname AS 'Име', agent_lname AS 'Фамилия', agent_address AS 'Адрес'
--FROM agents
--WHERE agent_address LIKE '%София%'
--UNION 
--SELECT client_pname, client_lname, client_address
--FROM clients
--WHERE client_address LIKE '%София%';

/* Да се изведе име, фамилия и адрес на всички брокери и клиенти на агенцията за недвижими имоти, които са от София или Бургас. 
   Резултатът да е сортиран в низходящ ред по име. */
--SELECT agent_pname AS 'Име', agent_lname AS 'Фамилия', agent_address AS 'Адрес'
--FROM agents
--WHERE agent_address LIKE '%София%' OR agent_address LIKE '%Бургас%'
--UNION 
--SELECT client_pname, client_lname, client_address
--FROM clients
--WHERE client_address LIKE '%София%' OR client_address LIKE '%Бургас%'
--ORDER BY 1 ASC;

/* Имена, които присъстват в таблиците за брокери и клиенти едновременно, сортирани по име в нарастващ ред.*/
--SELECT agent_pname AS 'Имена'
--FROM agents
--INTERSECT 
--SELECT client_pname
--FROM clients
--ORDER BY 1 ASC;

/* Имена на брокери, които липсват при клиентите, сортирани по име в нарастващ ред */
--SELECT agent_pname AS 'Брокери'
--FROM agents
--EXCEPT 
--SELECT client_pname
--FROM clients
--ORDER BY 1 ASC;

/* Имена на клиенти, които липсват при брокерите, сортирани по име в нарастващ ред. */
SELECT client_pname AS 'Клиенти'
FROM clients
EXCEPT 
SELECT agent_pname
FROM agents
ORDER BY 1 ASC;