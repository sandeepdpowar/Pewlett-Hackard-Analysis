SELECT e.emp_no,
		e.first_name,
		e.last_name,
		t.title,
		t.from_date,
		t.to_date
INTO retirement_titles
FROM employees as e
	INNER JOIN titles as t
		ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;



SELECT * from retirement_titles;



-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
from retirement_titles
ORDER BY emp_no;

SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;


SELECT COUNT(title) as tit, 
        title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY tit DESC;



SELECT DISTINCT ON (e.emp_no) e.emp_no,
		e.first_name,
		e.last_name,
        e.birth_date,
		t.title,
		dp.from_date,
		dp.to_date
INTO mentorship_eligibility
FROM employees as e
    INNER JOIN dept_emp as dp
        ON (e.emp_no = dp.emp_no)
	INNER JOIN titles as t
		ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (dp.to_date = '9999-01-01')
ORDER BY e.emp_no;