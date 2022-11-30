@echo off
set var=3.6.7
set newPath=E:\hc1_version_code\test\HC1-DynamicDataMod\ianc-api\target
set newFileName=ianc-api-model.jar 
echo %var%
echo %date:~0,4%%date:~5,2%%date:~8,2%-%time:~0,2%%time:~3,2%%time:~6,2%
set dirname=C:\Users\21419649\Desktop\patch\%var%_%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
echo %dirname%
md %dirname%
::copy E:\hc1_version_code\test\HC1-DynamicDataMod\ianc-api\target\ianc-api-model.jar %dirname%\ianc-api-model.jar
echo E:\hc1_version_code\test\HC1-DynamicDataMod\ianc-api\target\%newFileName% 
copy %newPath%\%newFileName% %dirname%\%newFileName% 
echo complete!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
pause
start %dirname%
