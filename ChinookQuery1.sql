use Chinook
/*
Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
*/
select
  FullName = firstName + ' ' + LastName,
  CustomerId,
  Country
from Customer 
where country != 'USA'


