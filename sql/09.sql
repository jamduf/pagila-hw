/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */
SELECT s.first_name,
       s.last_name,
       SUM(p.amount) AS sum
FROM staff s
JOIN payment_p2020_01 p ON s.staff_id = p.staff_id
GROUP BY s.first_name, s.last_name;

