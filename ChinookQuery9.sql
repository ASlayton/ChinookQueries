use Chinook
/*
What are the respective total sales for each of those years
*/

select 
  datepart(yyyy, InvoiceDate) as Year,
  sum(Total) as TotalSales
from Invoice
where datepart(yyyy, InvoiceDate) between 2009 and 2011
group by datepart(yyyy, InvoiceDate)
