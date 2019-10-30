rem

rem День даты 
Set DD=%DATE:~0,2%
rem Месяц даты 
Set MM=%DATE:~3,2%
rem Год даты [сокращенный] 
rem Set YY=%DATE:~8,2% 
rem Год даты [полный] 
Set YYYY=%DATE:~6,4%

rem echo %YYYY%%MM%%DD%
rem echo %DATE%
rem 
c:\xampp\mysql\bin\mysqldump -p -ucake cake > cake%YYYY%%MM%%DD%.sql