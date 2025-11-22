use mdc_ch02;
-- A
select *
from customer,invoice;

-- B
select LastName, FirstName, Phone
from customer;

-- C
select LastName, FirstName, Phone
from customer
where FirstName like 'Nikki%';

-- D
select LastName, FirstName, Phone, DateIn, DateOut
from customer
join invoice
where TotalAmount > '$100.00';

-- E
select LastName, FirstName, Phone
from customer
where FirstName like 'B%';

-- F
select LastName, FirstName, Phone
from customer
where LastName like '%cat%';

-- G
select LastName, FirstName, Phone
from customer
where Phone like '_23%';

-- H
select max(TotalAmount)
from invoice;

select min(TotalAmount)
from invoice;

-- I
select avg(TotalAmount)
from invoice;

-- J
select count(CustomerID)
from customer;

-- K
select LastName, FirstName
from customer
Group by LastName, FirstName;

-- L
select LastName, FirstName, Count(*) as CustomerCount
from customer  
group by LastName, FirstName;


-- M
select LastName, FirstName, Phone
from customer
where customerID in (
		select customerID
        from invoice
        where TotalAmount > 100 )
order by LastName ASC, FirstName DESC;

-- N
select Customer.LastName, Customer.FirstName, Customer.Phone
from Customer, Invoice
where Customer.CustomerId = Invoice.CustomerId
and invoice.TotalAmount > 100
order by LastName ASC, firstName DESC;

-- O
select Customer.LastName, Customer.FirstName, Customer.Phone
from Customer
join Invoice on Customer.CustomerId = Invoice.CustomerId
where TotalAmount > 100
order by LastName ASC, FirstName DESC;

-- P
select LastName, FirstName, Phone
from Customer
where CustomerId in (
		select CustomerId
        from invoice
        where InvoiceNumber in (
			select InvoiceNumber
            from invoice_item
			where item = 'Dress shirt'
        )
        )
order by LastName ASC, FirstName DESC;

-- Q
select customer.LastName, customer.FirstName, customer.Phone
from customer, invoice, invoice_item
where customer.CustomerId = Invoice.CustomerId
and invoice.invoiceNumber = invoice_item.invoiceNumber
and invoice_item.item = 'Dress shirt'
order by LastName ASC, FirstName DESC;

-- R
select customer.LastName, customer.FirstName, customer.Phone
from customer
join invoice on  customer.CustomerID = invoice.CustomerID
join invoice_item on invoice.invoiceNumber = invoice_item.invoiceNumber
where invoice_item.item = 'Dress shirt'
order by LastName ASC, FirstName DESC;

-- S
select customer.LastName as CustomerLastName, customer.FirstName as CustomerFirstName;

-- T 
select customer.LastName, customer.FirstName, customer.Phone
from customer
join invoice
on customer.CustomerID = invoice.CustomerID
where invoice.InvoiceNumber in (
		select InvoiceNumber
        from invoice_item
        where item = 'Dress shirt' )
order by LastName ASC, FirstName DESC;

-- U
select customer.LastName, customer.FirstName, customer.Phone, invoice.TotalAmount
from customer
left join invoice 
	on customer.CustomerID = invoice.CustomerID
left join invoice_item
	on invoice.InvoiceNumber = invoice_item.InvoiceNumber
    and invoice_item.item = 'Dress shirt'
    order by LastName ASC, FirstName DESC, TotalAmount ASC;