use Chinook

/***********************************************************

Number 6
Provide a query that shows the invoices associated with
each sales agent. The resultant table should include the 
Sales Agent's full name.

************************************************************/

select 
  FullName = e.FirstName + ' ' + e.LastName,
  i.InvoiceId
from Customer c
join Employee e
on c.SupportRepId = e.EmployeeId
join Invoice i
on c.CustomerId = i.CustomerId