E: 
echo package new project
@echo off
set prePath=E:\hc1_version_code\mozuhua\HC1-DynamicDataMod
set prename=C:\Users\21419649\Desktop\patch\
set newFileName=ianc-api-model.jar 
set newPath=%prePath%\ianc-api\target
set /p ver=version:
echo %ver% 
echo %newPath% 
echo %newFileName% 
cd %prePath%
git checkout -b %ver% origin/%ver% 
git checkout %ver% 
git pull 
call mvn clean install -Dmaven.test.skip=true 
set dirname=%prename%\new_%ver%_%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
echo %dirname%
md %dirname%
echo %newPath%\%newFileName% %dirname%\%newFileName%
copy %newPath%\%newFileName% %dirname%\%newFileName% 
echo complete!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
pause
start %dirname%
