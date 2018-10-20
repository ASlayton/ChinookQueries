use CHinook

/*
 Which sales agent made the most in sales in 2009?
*/

select top 1
  e.FirstName, 
  e.LastName,
  sum(i.Total) as TotalSales
from Employee e
join Customer c
  on e.EmployeeId = c.SupportRepId
join Invoice i
  on c.CustomerId = i.CustomerId
where datepart(yyyy, i.InvoiceDate) between 2009 and 2010
group by 
  e.FirstName,
  e.LastName
order by TotalSales desc