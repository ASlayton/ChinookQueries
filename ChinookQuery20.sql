use Chinook

/***********************************************************

Number 20
Which sales agent made the most in sales over all?

************************************************************/

select top 1
  e.FirstName, 
  e.LastName,
  sum(i.Total) as TotalSales
from Employee e
join Customer c
  on e.EmployeeId = c.SupportRepId
join Invoice i
  on c.CustomerId = i.CustomerId
group by 
  e.FirstName,
  e.LastName
order by TotalSales desc