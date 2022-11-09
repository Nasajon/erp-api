@ECHO OFF

@CALL %NASAJON_CI_BASE_DIR%\build\erp\setvars.bat

@SET /p VERINFO=<%WORKSPACE_OUT%\VersionInfo
@SET /p DEPS_VERSION=<%WORKSPACE_OUT%\DependenciesMaskVersion

@mvnw install -U