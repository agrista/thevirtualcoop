-- res_partner
select distinct 'getenergy.parent_' || "MajorID" as external_id,
                "MajorName"                      as name,
                'True'                           as is_company,
                'Get Energy Today (Pty) Ltd'     as company_id
from getenergy.warehouses;

-- res_partner_delivery
select 'getenergy.partner_' || "SupplierPointID" as external_id,
       "PointName"                               as name,
       "PointTown"                               as city,
       "PointAddress"                            as address1,
       split_part("PointGPSCoordinates", ',', 1) as partner_latitude,
       split_part("PointGPSCoordinates", ',', 2) as partner_longitude,
       'getenergy.parent_' || "MajorID"          as parent_id,
       'delivery'                                as type,
       'Get Energy Today (Pty) Ltd'              as company_id
from getenergy.warehouses;

-- stock_warehouse
select 'getenergy.warehouse_' || "SupplierPointID" as external_id,
       'getenergy.partner_' || "SupplierPointID"   as partner_id,
       "PointName"                                 as name,
       "SupplierPointID"                           as code,
       'Get Energy Today (Pty) Ltd'                as company_id
from getenergy.warehouses;

-- product_product
select 'getenergy.product_' || "SupplierPointID" as external_id,
       "PointName" || 'Collection'               as name,
       'service'                                 as type,
       'Get Energy Today (Pty) Ltd'              as company_id
from getenergy.warehouses;


-- delivery_carrier
select 'getenergy.delivery_' || "SupplierPointID"  as external_id,
       'getenergy.warehouse_' || "SupplierPointID" as warehouse_id,
       'Collect at ' || "PointName"                as name,
       'onsite'                                    as delivery_type,
       'Get Energy Today (Pty) Ltd'                as company_id,
       'getenergy.product_' || "SupplierPointID"   as product_id
from getenergy.warehouses;
