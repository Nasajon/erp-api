@ECHO OFF

@CALL %NASAJON_CI_BASE_DIR%\build\erp\setvars.bat

@SET /p VERINFO=<%WORKSPACE_OUT%\VersionInfo

@mvnw install -U