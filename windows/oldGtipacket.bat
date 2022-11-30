E: 
echo package old project
@echo off
set prePath=E:\hc1_version_code\old-git\HC1-Jianguan\ianc-pets
set prename=C:\Users\21419649\Desktop\patch\
set oldFileName1=ianc-pets-web.war
set oldFileName2=ianc-pets-officalweb.war
set oldPath1=%prePath%\ianc-pets-web\target
set oldPath2=%prePath%\ianc-pets-officalweb\target
set /p ver=version:
echo %ver% 
echo %oldPath1% 
echo %oldFileName1% 
cd %prePath%
git checkout -b %ver% origin/%ver% 
git checkout %ver% 
git pull 
call mvn clean install -Dmaven.test.skip=true 
set dirname=%prename%\old_%ver%_%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
echo %dirname%
md %dirname%
echo %oldPath1%\%oldFileName1% %dirname%\%oldFileName1%
copy %oldPath1%\%oldFileName1% %dirname%\%oldFileName1% 
echo %oldPath2%\%oldFileName2% %dirname%\%oldFileName2%
copy %oldPath2%\%oldFileName2% %dirname%\%oldFileName2% 
echo complete!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
pause
start %dirname%