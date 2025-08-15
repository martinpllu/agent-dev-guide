<!-- BEGIN PLUGIN sst.v3

- Plugin for SST version 3 (https://sst.dev)
- "SST is a framework that makes it easy to build modern full-stack applications on your own infrastructure"
- An application uses SST version 3 if it depends on `sst` version 3.x in package.json

NOTE FOR HUMANS!

Ensure that the `dev` command in `package.json` ends with ` > .sst/log/web.log 2>&1`. This captures the output of the local web server (e.g. vite) to a log file that the agent can read. This will be addressed in https://github.com/sst/sst/pull/5898.

-->

## Infrastructure as code

SST v3. Note that there are significant differences between SSTv2 and v3. Please consult online docs at https://sst.dev/docs if you're not sure.

### Run application

`npx sst dev`

- In sst dev, all changes to backend/frontend code and infrastructure (in sst.config.ts) will be automatically reloaded. 
- Code reloading takes a few seconds. 
- Infrastructure changes can take longer so you might want to watch the logs.

### Application status

Run `find .sst -name "*.server" -type f` to check if a .server file exist in `.sst/`. If it exists, the app is running locally. If not, the app is not running. 

### View logs

Logs are written to `.sst/log`. The exact logs will depend on the type of application and infrastructure used, but they may include:

- `.sst/log/pulumi.log` - infrastructure logs
- `.sst/lambda/<MyFunction>/<id>.log` - lambda invocation logs
- `.sst/log/web.log` - web app logs (e.g. nextjs or React Router app). You can get the URL of the web app in this log.

### Application deployment info

- `.sst/outputs.json` contains infrastructure outputs, e.g. backend endpoints.

<!-- END PLUGIN sst.v3 -->