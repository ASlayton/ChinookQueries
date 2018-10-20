use Chinook

/***********************************************************

Number 22
Provide a query that shows the total sales per country.

************************************************************/

select BillingCountry, sum(Total) as TotalSales
from Invoice
Group by BillingCountry
