use cape_codd;

-- 2.17
select SKU, SKU_DESCRIPTION
from INVENTORY;

-- 2.18
select SKU_DESCRIPTION, SKU
from INVENTORY;

-- 2.19
select warehouseID as ID
from INVENTORY;

-- 2.20
select distinct warehouseID
from INVENTORY;

-- 2.21
select warehouseID, SKU, SKU_Description, QuantityOnHand, QuantityOnOrder
from INVENTORY;

-- 2.22
select *
from INVENTORY;

-- 2.23
select *
from inventory 
where QuantityOnHand > 0;

-- 2.24
select SKU, SKU_Description
from INVENTORY
where QuantityOnHand = 0;

-- 2.25
select SKU, SKU_Description, WarehouseID
from INVENTORY
where QuantityOnHand = 0
ORDER BY WarehouseID  ASC;

-- 2.26
select SKU, SKU_Description, WarehouseID
from INVENTORY
where QuantityOnHand = 0
ORDER BY WarehouseID DESC, SKU ASC;

-- 2.27
select SKU, SKU_Description, WarehouseID
from INVENTORY
where QuantityOnHand = 0 and QuantityOnOrder > 0
ORDER BY WarehouseID DESC, SKU ASC;

-- 2.28
select SKU, SKU_Description, WarehouseID
from INVENTORY
where QuanityOnHand = 0 and QuantityOnOrder = 0
ORDER BY WarehouseID DESC, SKU ASC;

-- 2.29
select SKU, SKU_Description, WarehouseID, QuantityOnHand
from INVENTORY
where QuantityOnHand > 1
And QuantityOnHand < 10;

-- 2.30
select SKU, SKU_Description, WarehouseID, QuantityOnHand
from INVENTORY
where QuantityOnHand Between 1 and 9;

-- 2.31
select DISTINCT SKU, SKU_Description
from INVENTORY
where SKU_Description LIKE 'Half-Dome%'; -- starting with the word

-- 2.32
select DISTINCT SKU, SKU_Description
from INVENTORY
where SKU_Description LIKE '%Climb%';

-- 2.33
select DISTINCT SKU, SKU_Description
from INVENTORY
where SKU_Description LIKE '__d%';

-- 2.34
select SUM(QuantityOnHand) As QuantityOnHandSum,
		AVG(QuantityOnHand) As QuantityOnHandAvg,
        MIN(QuantityOnHand) As QuantityOnHandMin,
        MAX(QuantityOnHand) As QuantityOnHandMax,
        COUNT(QuantityOnHand) As QuantityOnHandCount
from INVENTORY;

-- 2.36
	select WarehouseID, SUM(QuantityOnHand) As TotalItemsOnHand
    from INVENTORY
    GROUP BY WarehouseID
    ORDER BY TotalItemsOnHand DESC;
    
-- 2.37
	select WarehouseID, SUM(QuantityOnHand) As TotalItemsOnHandLT3
    from INVENTORY
    where QuantityOnHand < 3
    GROUP BY WarehouseID
    ORDER BY TotalItemsOnHandLT3 DESC;
    
-- 2.38
	select WarehouseID, SUM(QuantityOnHand) As TotalItemsOnHandLT3
    from INVENTORY
    where QuantityOnHand < 3
    GROUP BY WarehouseID
    Having COUNT(SKU) < 2
    ORDER BY TotalItemsOnHandLT3 DESC;