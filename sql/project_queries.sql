SELECT doctor_name, AVG(treatment_cost) AS avg_cost
FROM patients
GROUP BY doctor_name;