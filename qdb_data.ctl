OPTIONS (SKIP=7)
LOAD DATA
REPLACE INTO TABLE CMP_QDB
FIELDS TERMINATED BY '	'
(
	employee_id,
	emp_first_name,
	emp_middle_name,
	emp_last_name,
	email_addr,
	work_addr_line1,
	work_addr_line2,
	campus_mail_code,
	campus_phone,
	work_addr_city,
	work_addr_state,
	work_addr_zip,
	home_dept_code,
	type,
	law
)
