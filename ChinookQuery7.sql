use Chinook

/***********************************************************

Number 7
Provide a query that shows the Invoice Total, Customer 
name, Country and Sale Agent name for all invoices and 
customers.

************************************************************/

select 
  InvoiceTotal = i.Total,
  CustomerName = c.FirstName + ' ' + c.LastName,
  c.Country,
  AgentName = e.FirstName + ' ' + e.LastName
from Customer c
join Invoice i
on c.CustomerId = i.CustomerId
join Employee e
on c.SupportRepId = e.EmployeeId
order by c.CustomerId