use cape_codd;
-- 2.40
	select 	SKU, SKU_Description, INVENTORY.WarehouseID,Warehouse.WarehouseID, WarehouseCity, WarehouseState
    from INVENTORY
    join warehouse on INVENTORY.WarehouseID = Warehouse.WarehouseID
    where WarehouseCity = 'Atlanta' or WarehouseCity = 'Bangor' or WarehouseCity = 'Chicago';
    
-- 2.41
	select 	SKU, SKU_Description, INVENTORY.WarehouseID,Warehouse.WarehouseID, WarehouseCity, WarehouseState
    from INVENTORY
    join warehouse on INVENTORY.WarehouseID = Warehouse.WarehouseID
    where WarehouseCity in ('Atlanta','Bangor','Chicago');
    
-- 2.42
	select 	SKU, SKU_Description, INVENTORY.WarehouseID,Warehouse.WarehouseID, WarehouseCity, WarehouseState
    from INVENTORY
    join warehouse on INVENTORY.WarehouseID = Warehouse.WarehouseID
    where WarehouseCity <> 'Atlanta' or WarehouseCity <> 'Bangor' or WarehouseCity <> 'Chicago';
    
-- 2.43
	select 	SKU, SKU_Description, INVENTORY.WarehouseID,Warehouse.WarehouseID, WarehouseCity, WarehouseState
    from INVENTORY
    join warehouse on INVENTORY.WarehouseID = Warehouse.WarehouseID
    where WarehouseCity not in('Atlanta','Bangor','Chicago');
    
-- 2.44
	select CONCAT(SKU_Description, 'is located in', WarehouseCity) As ItemLocation
    from INVENTORY
    Join warehouse on INVENTORY.WarehouseID = Warehouse.WarehouseID;
    
-- 2.45
	select WarehouseID
    from Warehouse
    where Manager = 'Lucille Smith';
    
    select SKU, SKU_Description, WarehouseID
    from INVENTORY
    Where WarehouseID = (
				select WarehouseID
    from Warehouse
    where Manager = 'Lucille Smith');
    
-- 2.46
	select SKU, SKU_Description, INVENTORY.WarehouseID
    from INVENTORY, warehouse
    where INVENTORY.WarehouseID = warehouse.WarehouseID
    And Warehouse.Manager = 'Lucille Smith'; 
    
-- 2.47
	select SKU, SKU_Description, INVENTORY.WarehouseID
    from INVENTORY
    join warehouse on INVENTORY.WarehouseID = warehouse.WarehouseID
    Where Warehouse.Manager = 'Lucille Smith';
    
-- 2.48
	select WarehouseID
    from Warehouse
    where Manager = 'Lucille Smith';
    
	select WarehouseID, AVG(QuantityOnHand) As AvgQuantityOnHand
    from INVENTORY
    where WarehouseID = (
			select WarehouseID
    from Warehouse
    where Manager = 'Lucille Smith')	
    Group by WarehouseID;  
    
-- 2.49
    select Inventory.WarehouseID, AVG(QuantityOnHand) As AvgQuantityOnHand
    from INVENTORY, Warehouse
    where INVENTORY.WarehouseID = Warehouse.WarehouseID
    and Warehouse.Manager = 'Lucille Smith'
    Group by Inventory.WarehouseID;
    
-- 2.50
	select Inventory.WarehouseID, AVG(QuantityOnHand) As AvgQuantityOnHand
    from INVENTORY
    join warehouse on INVENTORY.WarehouseID = Warehouse.WarehouseID
    where Warehouse.Manager = 'Lucille Smith'
    Group by Inventory.WarehouseID;