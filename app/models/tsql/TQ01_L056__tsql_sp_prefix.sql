--noqa: disable=PRS

-- Anti-pattern
CREATE PROCEDURE dbo.sp_pull_data
AS
SELECT
    ID,
    DataDate,
    CaseOutput
FROM table1

-- Best practice
CREATE PROCEDURE dbo.pull_data
AS
SELECT
    ID,
    DataDate,
    CaseOutput
FROM table1