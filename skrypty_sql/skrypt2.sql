SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    d.department_name,
    SUM(s.salary) AS total_salary
FROM
    employees e
JOIN
    departments d ON e.department_id = d.department_id
JOIN
    salaries s ON e.employee_id = s.employee_id
WHERE
    e.hire_date >= TO_DATE('2020-01-01', 'YYYY-MM-DD')
GROUP BY
    e.employee_id,
    e.first_name,
    e.last_name,
    d.department_name
HAVING
    SUM(s.salary) > 50000
ORDER BY
    total_salary DESC;