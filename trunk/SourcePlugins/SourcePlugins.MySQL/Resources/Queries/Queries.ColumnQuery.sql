﻿SELECT 
    INFORMATION_SCHEMA.COLUMNS.ORDINAL_POSITION, 
    INFORMATION_SCHEMA.COLUMNS.COLUMN_NAME, 
    INFORMATION_SCHEMA.COLUMNS.DATA_TYPE, 
    INFORMATION_SCHEMA.COLUMNS.CHARACTER_MAXIMUM_LENGTH, 
    INFORMATION_SCHEMA.COLUMNS.NUMERIC_PRECISION, 
    INFORMATION_SCHEMA.COLUMNS.NUMERIC_SCALE, 
    INFORMATION_SCHEMA.COLUMNS.IS_NULLABLE, 
    CASE WHEN INFORMATION_SCHEMA.COLUMNS.EXTRA = 'auto_increment' THEN 'YES' ELSE 'NO' END AS IS_IDENTITY, 
    INFORMATION_SCHEMA.COLUMNS.COLUMN_KEY AS CONSTRAINT_TYPE 
FROM 
    INFORMATION_SCHEMA.COLUMNS 
WHERE 
    INFORMATION_SCHEMA.COLUMNS.TABLE_NAME = '@TABLE_NAME' 
ORDER BY 
    INFORMATION_SCHEMA.COLUMNS.ORDINAL_POSITION