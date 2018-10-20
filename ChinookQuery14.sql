use Chinook

/***********************************************************

Number 14
Provide a query that shows the # of invoices per country.
HINT: GROUP BY

************************************************************/

select BillingCountry, count(*) as NoOfInvoices
from Invoice
Group by BillingCountry