@ECHO OFF

@SET FALHA_COMPILACAO=FALSE
@SET CI_MODE=0
@SET BUILD_MODE=RELEASE

@IF DEFINED JENKINS_HOME (
    @SET CI_MODE=1
)

@IF %CI_MODE% == 0 (
    @CALL "%PROGRAMFILES(X86)%\Embarcadero\Studio\18.0\bin\rsvars.bat"
) ELSE (
    @SET /p VERINFO=<%WORKSPACE_OUT%\VersionInfo
)

@ECHO.
@ECHO.
@ECHO ==============================
@ECHO ===       nsjMDAAPI        ===
@ECHO ==============================

msbuild "..\mda\package\nsjMDAAPI.dproj" /t:Build /p:BuildInParallel=true /v:minimal /p:config="%BUILD_MODE%"
IF %ERRORLEVEL% NEQ 0 GOTO BUILDFAILED

:SUCCESS
ECHO BUILD FINALIZADO COM SUCESSO
GOTO NEXT

:BUILDFAILED
@SET FALHA_COMPILACAO=TRUE
ECHO BUILD nsjMDAAPI COM ERRO(S)
PAUSE
EXIT /b 1

:NEXT

@ECHO.
@ECHO.
@ECHO ==============================
@ECHO ===       nsjAPI           ===
@ECHO ==============================

msbuild "..\source\delphi\package\nsjAPI.dproj" /t:Build /p:BuildInParallel=true /v:minimal /p:config="%BUILD_MODE%"
IF %ERRORLEVEL% NEQ 0 GOTO BUILDFAILED

:SUCCESS
ECHO BUILD FINALIZADO COM SUCESSO
GOTO FINISH

:BUILDFAILED
@SET FALHA_COMPILACAO=TRUE
ECHO BUILD nsjAPI COM ERRO(S)
PAUSE
EXIT /b 1

:FINISH