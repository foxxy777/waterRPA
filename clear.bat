@REM 参考链接
@REM https://blog.csdn.net/qq_15509277/article/details/107914988
@REM https://zhidao.baidu.com/question/1603543665268707707.html
cd "%temp%"
set fn=_MEI
set n=0
set /a n+=1
:repeat
timeout 0.1
set /a n+=1
for /f "delims=" %%i in ('dir *%fn%* /ad/b') do rd /s/q "%%i"
if %n%==20 exit
If errorlevel 1 (
    goto repeat
) Else (
    exit
)
