:: 6. Install npm packages at DEPLOYMENT_TARGET 
echo =======  Installing npm packages: Starting at %TIME% ======= 
IF EXIST "%DEPLOYMENT_TARGET%\package.json" (
  pushd "%DEPLOYMENT_TARGET%"
  call :ExecuteCmd !NPM_CMD! install --production
  IF !ERRORLEVEL! NEQ 0 goto error
  popd
)
echo =======  Installing npm packages: Finished at %TIME% =======