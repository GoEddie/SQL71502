CREATE FUNCTION [dbo].[CountTables]
(
    @name sysname
)
RETURNS INT
AS
BEGIN
    RETURN
    (
        SELECT COUNT(*) FROM dbo.something WHERE TABLE_NAME = @name
    );
END
