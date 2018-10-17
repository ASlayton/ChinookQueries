use Chinook

/*
How many Invoices were there in 2009 and 2011?
*/

select count(*) as NoOfInvoices
from invoice
where InvoiceDate between '01/01/2009' and '01/01/2012'