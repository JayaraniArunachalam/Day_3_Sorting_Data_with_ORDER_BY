EXPLAIN SELECT * FROM patients WHERE age > 60;
CREATE INDEX idx_age ON patients(age);
SHOW INDEX FROM patients;
DROP INDEX idx_age ON patients;
SELECT * FROM patients ORDER By age DESC;
SELECT * FROM services_weekly ORDER BY week, patients_request DESC;
SELECT staff_name FROM staff ORDER BY staff_name;
SELECT week, service, patients_refused , patients_request 
FROM services_weekly
ORDER BY patients_refused DESC
LIMIT 5;
