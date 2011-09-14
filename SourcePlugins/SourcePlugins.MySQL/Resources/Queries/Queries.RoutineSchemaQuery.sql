﻿SELECT
	INFORMATION_SCHEMA.ROUTINES.ROUTINE_NAME				AS ROUTINE_NAME,
	INFORMATION_SCHEMA.ROUTINES.ROUTINE_TYPE				AS ROUTINE_TYPE,
	INFORMATION_SCHEMA.PARAMETERS.PARAMETER_NAME			AS PARAMETER_NAME,
	INFORMATION_SCHEMA.PARAMETERS.PARAMETER_MODE			AS PARAMETER_MODE,
	INFORMATION_SCHEMA.PARAMETERS.DATA_TYPE					AS DATA_TYPE,
	INFORMATION_SCHEMA.PARAMETERS.ORDINAL_POSITION			AS ORDINAL_POSITION,
	INFORMATION_SCHEMA.PARAMETERS.CHARACTER_MAXIMUM_LENGTH	AS CHARACTER_MAXIMUM_LENGTH,
	INFORMATION_SCHEMA.PARAMETERS.NUMERIC_PRECISION			AS NUMERIC_PRECISION,
	INFORMATION_SCHEMA.PARAMETERS.NUMERIC_SCALE				AS NUMERIC_SCALE
FROM
	INFORMATION_SCHEMA.ROUTINES 
LEFT JOIN
	INFORMATION_SCHEMA.PARAMETERS ON INFORMATION_SCHEMA.PARAMETERS.SPECIFIC_NAME = INFORMATION_SCHEMA.ROUTINES.SPECIFIC_NAME
ORDER BY
	INFORMATION_SCHEMA.ROUTINES.SPECIFIC_NAME,
	INFORMATION_SCHEMA.PARAMETERS.ORDINAL_POSITION