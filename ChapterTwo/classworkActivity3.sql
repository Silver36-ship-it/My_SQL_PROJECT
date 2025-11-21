use cape_codd;

-- 2.56
select SKU, SKU_Description, Department
from catalog_sku_2016
union 
select SKU, SKU_Description, Department
from catalog_sku_2017;

-- 2.57
select SKU, SKU_Description, Department
from catalog_sku_2016
where catalog_sku_2016.sku is not null
union 
select SKU, SKU_Description, Department
from catalog_sku_2017
where catalog_sku_2017.sku is not null;

-- 2.58
select SKU, SKU_Description, Department
from catalog_sku_2016
INTERSECT
select SKU, SKU_Description, Department
from catalog_sku_2017;

-- 2.59
select SKU, SKU_Description, Department
from catalog_sku_2016
INTERSECT
select SKU, SKU_Description, Department
from catalog_sku_2017;

-- 2.60
select SKU, SKU_Description, Department
from catalog_sku_2016
EXCEPT
select SKU, SKU_Description, Department
from catalog_sku_2017