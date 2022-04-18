-- Select employees and their titles that are retirement eligable 
SELECT e.emp_no,
    e.first_name,
    e.last_name,
    t.titles,
    t.from_date,
    t.to_date

INTO retire_title
FROM employees as emp_no
INNER JOIN title
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
ORDER BY e.emp_no


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no)
emp_no,
first_name,
last_name,
title
INTO retire_title_unique
FROM retire_title
WHERE (to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

--Output table for count of unique values for title
SELECT COUNT(title),
title
INTO retire_title_count
FROM retire_title_unique
GROUP BY title
ORDER BY COUNT(title) DESC;

-- Deliverable 2 code for eligible mentors
SELECT DISTINCT ON (e.emp_no)
    e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title

INTO eligible_mentors

FROM employees as e
LEFT JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE de.to_date = '9999-01-01' AND
(e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no