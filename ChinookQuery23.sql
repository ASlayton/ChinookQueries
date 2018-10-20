use Chinook

/***********************************************************

Number 23
Which country's customers spent the most?

************************************************************/

select top 1
  BillingCountry, sum(Total) as TotalSales
from Invoice
Group by BillingCountry
Order By TotalSales desc