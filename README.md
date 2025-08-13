# agent-dev-guide

> Auto-generate the perfect context document for AI agents developing your application.

`agent-dev-guide` automatically generates a structured Developer Guide that gives AI agents the 'knowledge, eyes and hands' they need for effective autonomous development.

You can try it out in minutes:

- Run the generator prompt [generate.md](generate.md) in your application workspace using your AI coding tool of choice: Claude Code, Cursor, OpenCode etc. Select the most powerful model with extended thinking for best results.
- Your AI agent explores your codebase, systematically analysing it against the structured set of architecture patterns and development capabilities in the generator prompt.
- The agent generates the Developer Guide in `agent-dev-guide-developer-guide.md` containing a comprehensive agent development guide. You can include this in your agent prompts, or incorporate it in rules files like [CLAUDE.md](http://CLAUDE.md) or .cursor/rules

## The Developer Guide

The generated Developer Guide serves as an interface between your agent and your codebase. It provides a structured map of your architecture: code layout, application layers, frameworks and libraries, key standards. It also documents a structured set of *development capabilities” that allow your agent to work with the application in a local test environment: interacting with servers, reading logs, running scripts, interactively accessing test data and debugging the app. Finally, it encourages the agent to continuously improve the documentation as the application evolves. 

The Developer Guide helps give your agent the 'knowledge, eyes and hands’ it needs to develop your application efficiently, autonomously and with a high degree of success. It also highlights any gaps in your architecture or missing development capabilities. This helps you identify opportunities for improvement, and gives your agent the context for implementing them. 

## Bring your own workflow

agent-dev-guide steers clear of telling your agent how to work. You can layer on top (or let your agent decide) workflows like TDD, plan/build or sub-agent orchestration. agent-dev-guide concentrates on the “map”, not the “journey”. 

## Plugins

The generator prompt looks for ‘plugins’ in <URL>. These are markdown docs that provide additional information about common frameworks, tools etc. For example, there's an [sst.v3.md](http://sst.v3.md) plugin that defines the development capabilities provided by the SST v3 tool. If the generator prompt discovers that your app uses this tool, it will include the plugin’s documentation in the Overview doc. 

You can use the plugins provided and also define your own in an .agent-dev-guide/plugins folder in your workspace. Local plugins will override those discovered on the web. 

Contributions including plugins are very welcome!

## License

MIT - Use this anywhere, for anything.
