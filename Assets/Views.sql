----------------------------
 -- View creation
 ---------------------------
CREATE VIEW gold.cal
AS 
SELECT 
    *
FROM
    OPENROWSET
        (BULK 'https://awstorageaccdatalake.dfs.core.windows.net/silver/Calendar',
            FORMAT = 'PARQUET'
        ) AS Q1
CREATE VIEW gold.cus
AS 
SELECT 
    *
FROM
    OPENROWSET
        (BULK 'https://awstorageaccdatalake.dfs.core.windows.net/silver/Customer',
            FORMAT = 'PARQUET'
        ) AS Q1
CREATE VIEW gold.prod
AS 
SELECT 
    *
FROM
    OPENROWSET
        (BULK 'https://awstorageaccdatalake.dfs.core.windows.net/silver/Product',
            FORMAT = 'PARQUET'
        ) AS Q1
CREATE VIEW gold.proca
AS 
SELECT 
    *
FROM
    OPENROWSET
        (BULK 'https://awstorageaccdatalake.dfs.core.windows.net/silver/Product Categories',
            FORMAT = 'PARQUET'
        ) AS Q1
CREATE VIEW gold.prosub
AS 
SELECT 
    *
FROM
    OPENROWSET
        (BULK 'https://awstorageaccdatalake.dfs.core.windows.net/silver/Product Subcategory',
            FORMAT = 'PARQUET'
        ) AS Q1
CREATE VIEW gold.retu
AS 
SELECT 
    *
FROM
    OPENROWSET
        (BULK 'https://awstorageaccdatalake.dfs.core.windows.net/silver/Returns',
            FORMAT = 'PARQUET'
        ) AS Q1
CREATE VIEW gold.sal
AS 
SELECT 
    *
FROM
    OPENROWSET
        (BULK 'https://awstorageaccdatalake.dfs.core.windows.net/silver/Sales',
            FORMAT = 'PARQUET'
        ) AS Q1
CREATE VIEW gold.terri
AS 
SELECT 
    *
FROM
    OPENROWSET
        (BULK 'https://awstorageaccdatalake.dfs.core.windows.net/silver/Territories',
            FORMAT = 'PARQUET'
        ) AS Q1