OPTIONS ( ERRORS=50000, SILENT=(ERRORS) )
LOAD DATA
TRUNCATE
INTO TABLE CMP_BRUINCARD WHEN status = 'Active'
FIELDS TERMINATED BY ","
OPTIONALLY ENCLOSED BY '"'
(
  level_of_issue        CHAR,
  university_id CHAR "LPAD(:university_id,9,'0')",
  name          FILLER,
  status        CHAR,
  type          CHAR TERMINATED BY x'0D'
)
