﻿CREATE FUNCTION [dbo].[CountTables]
(
    @name sysname
)
RETURNS INT
AS
BEGIN
    RETURN
    (
        SELECT COUNT(*) FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = @name
    );
END
