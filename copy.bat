set "source=C:\Users\Jorge\Desktop\Work"
set "destination=D:\Backup\Work"

robocopy "%source%" "%destination%" /E /R:0 /W:0 /MT:32 /XJ