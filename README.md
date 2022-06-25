# Pewlett-Hackard-Analysis


# Overview of the analysis: Explain the purpose of this analysis.
The purpose of this analysis is to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program

# Results: 
## Based on the first analysis to find the number of Retiring Employees by Title, we identified that:
1. The Employees born between January 1, 1952 and December 31, 1955 title wise are 133776 in 'Retirement_titles' table
2. But 133776 title count has duplicate employee records as some Employees got promoted and their title changed , but the count of all the previous title is also present.
3. 'Unique_title' table gives the count of exact unique employees count who are eiligible for retirment and the count is 72458.
4. Out these 73458, below are the Employee that are retiring as per the title (this is captured in 'retiring_titles' table)
        25916	Senior Engineer
        24926	Senior Staff
        9285	Engineer
        7636	Staff
        3603	Technique Leader
        1090	Assistant Engineer
        2	    Manager

## Based on the second analysis:
5. 'Mentorship_Eligibility' table provides the count for current employees who were born between January 1, 1965 and December 31, 1965 and eligible for mentorship. The count is : 1549


# Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
## How many roles will need to be filled as the "silver tsunami" begins to make an impact?
72458 Roles needs to be filled as the "silver tsunami" begins to make an impact

## Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
There are 1549 etirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees
