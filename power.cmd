setlocal
SET high_performance=Power Scheme GUID: 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c  (High performance)
Powercfg -getactivescheme > tmp.txt
SET /p active= < tmp.txt
IF "%active%" == "%high_performance%" (
Powercfg -s a1841308-3541-4fab-bc81-f71556f20b4a
) ELSE (
Powercfg -s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
)
DEL tmp.txt
endlocal