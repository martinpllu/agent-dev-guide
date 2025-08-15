# agent-dev-guide

**Auto-generate the perfect context document for your AI agents!**

`agent-dev-guide` automatically generates a structured Developer Guide from your codebase, giving your AI coding agents the map they need for effective autonomous development.

## Quick Start

You can try it out in minutes:

- Run the generator prompt [generate.md](https://raw.githubusercontent.com/martinpllu/agent-dev-guide/refs/heads/main/generate.md) in your application workspace using your AI coding tool of choice: Claude Code, Cursor, OpenCode etc. Select the most powerful model with extended thinking for best results.
  - You can also include one or more 'plugin' prompts as described in Plugins below.
- Your AI agent explores your codebase, systematically analysing it against the structured set of architecture patterns and development capabilities in the generator prompt.
- The agent generates the Developer Guide in `agent-dev-guide.md`. 
- Include `agent-dev-guide.md` in your agent prompts, or incorporate it in rules files like `CLAUDE.md` or `.cursor/rules`

## Example

Developer Guide generated for the `agent-dev-example` application: https://github.com/martinpllu/agent-dev-example/blob/main/agent-dev-guide.md

## The Developer Guide

The generated Developer Guide serves as an interface between your agent and your codebase. It provides:

- A structured map of your architecture: code layout, application layers, frameworks and libraries, key standards. 
- A structured map of the "development capabilities” that allow your agent to work with the application in a local test environment: interact with servers, read logs, run scripts, interactively access test data and debug the app. 
- Guidance for the agent to continuously improve the documentation as the application evolves. 

The Developer Guide helps give your agent the knowledge it needs to develop your application efficiently, autonomously and with a high degree of success. It also highlights any gaps in your architecture or missing development capabilities. This helps you identify opportunities for improvement, and gives your agent the context for implementing them. 

## Safety first!

Development capabilities gives the agent powerful tools to work with the application in a personal development environment. However, you must guard against the agent accidentally using the tools against shared environments and especially prodution!

**Ensure that your development agent has no access to production**, and ideally no access to shared environments. Use role-based access controls, for example an AWS IAM role that limits agent permissions to a personal account.

## Bring your own workflow

`agent-dev-guide` steers clear of telling your agent how to work. You can layer on top (or let your agent decide) workflows like TDD, plan/build or sub-agent orchestration. `agent-dev-guide` concentrates on the “map”, not the “journey”. 

## Plugins

As well as the base generator prompt `generate.md` you can also include one or more 'plugin' prompts to supply tailored documentation for a particular technology. This can be useful for providing docs that the generator might not be able to come up with itself.

For example, there's an [sst.v3.md](plugins/sst.v3.md) plugin that defines the development capabilities provided by the SST v3 tool.

Append plugins to the generator prompt (i.e. after the main prompt). 

A handy way to do this for Claude Code: clone this repo locally then run this in your workspace directory: `cat /path/to/agent-dev-guide/generate.md /path/to/agent-dev-guide/generate.md/plugins/sst.v3.md | claude`

You can use the plugins in the `plugins/` directory, or supply your own. Base your plugin on the format used in [sst.v3.md](plugins/sst.v3.md).

Contributions including plugins are very welcome!

## Contact

Please reach out if you're interested in working together: jmpllu@gmail.com

## License

MIT - Use this anywhere, for anything.

