﻿SELECT 
    INFORMATION_SCHEMA.TABLES.TABLE_NAME, 
    INFORMATION_SCHEMA.TABLES.TABLE_TYPE 
FROM 
    INFORMATION_SCHEMA.TABLES 
WHERE 
    TABLE_SCHEMA <> 'mysql' AND TABLE_SCHEMA <> 'information_schema' 
ORDER BY 
    INFORMATION_SCHEMA.TABLES.TABLE_NAME
