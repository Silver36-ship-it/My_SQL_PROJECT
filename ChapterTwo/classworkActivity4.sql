use mdc_ch02;

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
Rtrim(FirstName) + "in" + Rtrim(LastName);


-- M
select LastName, FirstName, Phone
from customer
where(select TotalAmount
	from invoice
    where )