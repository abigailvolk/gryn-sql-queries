--Query to join the result with the characteristic name.
--Purpose: to exam the number of decimals recorded for each characteristic
SELECT tblResults.RESULT_TEXT, 
    tblResults.LocChDEf_IS_NUMBER, tblCharacteristics.*
FROM tblResults 
INNER JOIN tblCharacteristics ON 
    tblCharacteristics.LocChDEf_IS_NUMBER=tblResults.LocChDEf_IS_NUMBER;

--Get distinct local characteristic names that are associated with a result (i.e. they have been used for one of the projects)
-- Purpose: to generate a list of the used Characteristics. May be helpful for joining names to AGOL/lab names.
SELECT DISTINCT tblCharacteristics.LocCharNameCode
FROM tblCharacteristics 
INNER JOIN tblResults ON tblResults.LocCHDEF_IS_NUMBER = tblCharacteristics.LocCHDEF_IS_NUMBER;