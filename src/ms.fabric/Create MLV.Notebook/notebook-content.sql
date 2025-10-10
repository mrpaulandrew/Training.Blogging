-- Fabric notebook source

-- METADATA ********************

-- META {
-- META   "kernel_info": {
-- META     "name": "synapse_pyspark"
-- META   },
-- META   "dependencies": {
-- META     "lakehouse": {
-- META       "default_lakehouse": "727d4812-28b4-4101-ad35-05d55052ee42",
-- META       "default_lakehouse_name": "SharedLake02",
-- META       "default_lakehouse_workspace_id": "e9b89b94-07c7-461c-b94a-03be9efd0676",
-- META       "known_lakehouses": [
-- META         {
-- META           "id": "fd6dfb56-6072-4e45-bffb-1a2fcad33c65"
-- META         },
-- META         {
-- META           "id": "727d4812-28b4-4101-ad35-05d55052ee42"
-- META         }
-- META       ]
-- META     }
-- META   }
-- META }

-- CELL ********************

 CREATE SCHEMA IF NOT EXISTS mlvs;

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

CREATE MATERIALIZED LAKE VIEW IF NOT EXISTS mlvs.salesorderdetails_topproducts AS 
SELECT 
    *
FROM 
    dbo.salesorderdetail
WHERE
    ProductID IN (715,864,884)

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }
