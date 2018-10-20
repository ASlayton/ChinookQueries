use Chinook

/***********************************************************

Number 21
Provide a query that shows the count of customers assigned
to each sales agent.

s************************************************************/

select 
  EmployeeName = e.FirstName + ' ' + e.LastName,
  count(c.CustomerId) as NumOfCustomers
from Employee e
join Customer c
  on e.EmployeeId = c.SupportRepId
group by e.LastName, e.FirstName
