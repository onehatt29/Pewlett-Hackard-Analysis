SELECT emp_no,
first_name,
last_name,
title,
from_date,
to_date,
INTO retirement_titles
FROM employees
INNER JOIN titles
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no;

-- retirement titles

SELECT ce.emp_no,
  first_name,
  last_name,
  title,
  from_date,
  to_date
INTO retirement_titles
FROM employees 
INNER JOIN titles 

-- retirement titles

SELECT ce.emp_no,
  ce.first_name,
  ce.last_name,
  ti.title,
  ti.from_date,
  ti.to_date
INTO retirement_titles
FROM employees AS ce
  INNER JOIN titles AS ti
    ON (ce.emp_no = ti.emp_no)
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY ce.emp_no
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM ret_titles
ORDER BY emp_no ASC, to_date DESC;

select * from retirement_title,first_name,last_name,title

-- unique titles


SELECT ce.emp_no,
  ce.first_name,
  ce.last_name,
  ti.title,
  ti.from_date,
  ti.to_date
  FROM retirement_titles;

-- unique titles

SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM ret_titles
ORDER BY emp_no ASC, to_date DESC;

-- unique titles

SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;


select *from unique_titles

select* from retiring_titles

select from unique_titles

-- retiring titles
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_titles

-- mentorship eligibility
SELECT DISTINCT ON (e.emp_no) e.emp_no,
  e.first_name,
  e.last_name,
  e.birth_date,
  de.from_date,
  de.to_date,
  ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
  ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
  ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

select * from mentorship_eligibility