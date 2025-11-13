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
