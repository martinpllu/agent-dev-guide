## Plugin
- This is the documentation plugin for SST version 3 (SSTv3)
- An application uses SSTv3 if it depends on `sst` version 3.x.



## Init
- Ensure that the `dev` command in `package.json` contains ` > .sst/log/web.log 2>&1`. This captures the output of the local web server (e.g. vite) to a log file that the agent can read. This will be addressed in https://github.com/sst/sst/pull/5898.

## Infrastructure as code
- **IaC framework** This application uses SSTv3. Note that there are significant differences between SSTv2 and v3. Please consult online docs at https://sst.dev/docs if you're not sure.


## Developmet server 
- **Starting the server** `npx sst dev`
- **Determine server status**: Run `find .sst -name "*.server" -type f` to check if a .server file exist in `.sst/`. If it exists, the app is running locally. If not, the app is not running. 
- **Development server logs** 
  - Logs are written to `.sst/log`. The exact logs will depend on the type of application and infrastructure used, but they may include:
  - `.sst/log/pulumi.log` - infrastructure logs
  - `.sst/lambda/<MyFunction>/<id>.log` - lambda invocation logs
  - `.sst/log/web.log` - web app logs (e.g. nextjs or React Router app). You can get the URL of the web app in this log.
  - `.sst/outputs.json` contains infrastructure outputs, e.g. backend endpoints.
- **Hot reloading** As the application is running in sst dev mode, all changes to backend/frontend code and infrastructure (in sst.config.ts) will be automatically reloaded. Code reloading takes a few seconds. Infrastructure changes can take longer so you might want to watch the logs.