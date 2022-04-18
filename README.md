# Pewlett Hackard Analysis
## Overview
With a large amount of retirement eligible personnel, Pewlett Hackard decided to focus efforts on the human resources.  Using the company's SQL database, retirement eligible employees are summarized and mentors are flagged for an upcoming mentoring program. 

## Results

* A large amount of employees are retirement eligible.  By doing a count on the employee database, there are approximately 300,000 employees in the employee table and close to 75,000 are retiring.
```
SELECT COUNT(*) AS "Employee Count"
FROM employees
```
![Employee Count](../Images/Employee_count.png)


* Majority of the retirement personnel are Senior Engineers and Staff. Only 2 have a manager title, and a small percentage are Technique Leaders. 

![Title Count](../Images/title_count.png)

## Summary
* How many roles will need to be filled as the "silver tsunami" begins to make an impact?


* Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

