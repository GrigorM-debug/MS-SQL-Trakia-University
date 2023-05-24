use Fitness_db;
-- Заявки

/*Общия брой на членовете от всеки град*/
SELECT member_city AS 'Град', COUNT(*) AS 'Брой членове'
FROM Members
GROUP BY member_city; 

/* Членовете, които са извършили плащания, заедно с детайлите за плащането.*/
SELECT M.member_id AS 'Номер на клиента', M.member_pname AS 'Име', 
M.member_lname AS 'Фамилия', P.payment_id AS 'Номер на плащането', P.amount AS 'Цена', 
P.payment_date AS 'Дата на плащането'
FROM Members AS M
INNER JOIN Payments AS P ON M.member_id = P.member_id;

/*Извличане на топ 5 членове, които плащат най-високи суми, заедно с техния общ заплатен размер*/
SELECT TOP 5 M.member_id, M.member_pname AS 'Име', M.member_lname 'Фамилия', SUM(P.amount) AS total_amount_paid
FROM Members AS M
INNER JOIN Payments AS P ON M.member_id = P.member_id
GROUP BY M.member_id, M.member_pname, M.member_lname
ORDER BY total_amount_paid DESC;

/*Извличане на членовете, които са свалили най-много килограми от всички членове*/
SELECT M.member_id, M.member_pname, M.member_lname, MR.weight_before, MR.weight_now
FROM Members AS M
INNER JOIN Member_results AS MR ON M.member_id = MR.member_id
WHERE MR.weight_before - MR.weight_now = (
    SELECT MAX(weight_before - weight_now)
    FROM Member_results
);

/*Извличане членовете, които са закупили тренировъчен план, заедно със свързаните детайли за тренировката*/
SELECT M.member_id, M.member_pname AS 'Име', M.member_lname AS 'Фамилия', TP.training_plan_id,
W.workout_id, W.workout_name 'Име на тренировката', 
W.workout_description AS 'Описание на тренировката'
FROM Members M
INNER JOIN Payments P ON M.member_id = P.member_id
INNER JOIN Training_plans TP ON P.training_plan_id = TP.training_plan_id
INNER JOIN Workouts W ON TP.workout_id = W.workout_id;


/*Извличане на общите приходи, генерирани от всеки тип членство*/
SELECT MS.membership_type_name 'Име на абонамента', SUM(P.amount) AS 'Общ приход'
FROM Memberships AS MS
LEFT JOIN Payments AS P ON MS.membership_type_id = P.membership_type_id
GROUP BY MS.membership_type_name;

/*Извличaне на информация за членовете, които са закупили както тренировъчен план, така и хранителен режим*/
SELECT M.member_id, M.member_pname, M.member_lname
FROM Members AS M
INNER JOIN Payments AS P ON M.member_id = P.member_id
INNER JOIN Training_plans AS TP ON P.training_plan_id = TP.training_plan_id
INNER JOIN Diet_plans AS DP ON P.diet_plan_id = DP.diet_plan_id;

/*Извличане на хората от персонала, които не са треньори*/
SELECT S.staff_id, S.staff_pname AS 'Име', S.staff_lname 'Фамилия', S.staff_position AS 'Позиция'
FROM Staff AS S
LEFT JOIN Training_plans AS TP ON S.staff_id = TP.staff_id
LEFT JOIN Diet_plans AS DP ON S.staff_id = DP.staff_id
WHERE TP.training_plan_id IS NULL AND DP.diet_plan_id IS NULL;