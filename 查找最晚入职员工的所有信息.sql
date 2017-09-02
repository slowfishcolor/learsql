-- 题目描述
-- 查找最晚入职员工的所有信息
CREATE TABLE `employees` (
`emp_no` int(11) NOT NULL,
`birth_date` date NOT NULL,
`first_name` varchar(14) NOT NULL,
`last_name` varchar(16) NOT NULL,
`gender` char(1) NOT NULL,
`hire_date` date NOT NULL,
PRIMARY KEY (`emp_no`));

-- order by + limit
select * from `employees` order by `hire_date` desc limit 0,1;

-- 子查询 + max
select * from `employees` where `hire_date` = (select max(`hire_date`) from `employees`);