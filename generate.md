[!-- 

*** YOUR TASK ***

Analyse the codebase and write a comprehensive Developer Guide for AI agents based on the template in this document.

Write the Developer Guide to `agent-dev-guide.md`

If that file already exists, ask the user if they would like to (a) update the existing file or (b) replace the existing file. 

Always update the 'Built with...' comment including the version number at the end of the file.

CRITICAL ACCURACY REQUIREMENTS:
- VERIFY EVERYTHING: Do not make assumptions. Check files and trace through code to verify behaviors before documenting them.
- DO NOT RUN COMMANDS: Never execute commands during generation. Instead, inspect the command implementations in build files, scripts, and configuration files to understand what they do.
- NO GUESSES: If you cannot find evidence for something in the codebase, mark it as [Not implemented yet]. Never guess or invent features.
- FACT-CHECK PHASE: After initial analysis, go back and verify each claim by checking the actual code/config files.
- TRACE COMMANDS: Read script files, build configurations (package.json, Makefile, Gradle, pom.xml, Cargo.toml, etc.) to understand what commands do. Don't assume based on naming.

DOCUMENTATION GUIDELINES:
- See the Introduction for a the purpose of this document.
- [!-- --] comments are instructions for you, the author of the guide. Don't include them in the output.
- Include all uncommented text as-is
- Thoroughly explore the codebase to discover all key architecture elements and capabilities.
- Discover any available MCP servers and note them in relevant sections.
- Go through each section systematically.
- Think hard and dive deep, using subagents if required. It's extremely important to make this guide as good as possible.
- The guide should be comprehensive yet compact. Every token counts! 

VERSION AND EPHEMERAL DATA:
- Document ONLY major framework versions (e.g., React 18, Angular 15). NEVER include minor or patch versions (not 18.2.0 or 15.2.8).
- AVOID ephemeral data that changes frequently:
  - Don't specify current migration numbers
  - Don't include counts of files or tests  
  - Don't mention specific build numbers or deployment IDs
  - Don't include timestamps or dates that will become stale
- Focus on patterns and approaches rather than current state

CONCRETE EXAMPLES AND REFERENCES:
- ALWAYS provide specific file paths, class names, and function names as examples
- For each architectural pattern or feature, cite at least one concrete implementation
- Example: "Authentication via JWT tokens (see `src/auth/jwt-validator.ts:validateToken()`)"
- When describing patterns, indicate how widespread they are:
  - "Used throughout the application" 
  - "Used in the payment module (`src/payment/*.ts`)"
  - "Only in `src/experimental/feature.ts`"

ENVIRONMENT SAFETY:
- CRITICAL: Use placeholder syntax for ALL environment-dependent commands
- Use `<YOUR_ENV>` as a placeholder that forces user attention
- Example: `npm run deploy --env=<YOUR_ENV>`
- Add a safety note at the start of Development Capabilities section explaining the placeholder
- For commands that might affect shared resources, add explicit warnings
- Default to the safest option when documenting commands

ARCHITECTURE DOCUMENTATION:
- Link to any documentation or config files that provide more detail
- Reference the actual Infrastructure as Code files for deployment info (not assumed CI/CD)
- Check build configurations and IaC files for the real story (package.json, Makefile, build.gradle, pom.xml, Cargo.toml, etc.)
- Mark any missing architecture elements or capabilities with [Not implemented yet] with an optional sentence or two about how it might be implemented

SECTION STRUCTURE:
- The document contains Sections (# headings), Topics (## headings) and Items (### headings)
- If any Topics are non-applicable fill them with just [Not applicable - REASON]. For example, for the '## Frontend' Topic you might write [Not applicable - backend-only service]. For the '### Containerization` Item you might write [Not applicable - serverless app]  If marking a Topic as not applicable, skip all contained Items.
- In the Architecture items, refer to relevant directories/files/classes/functions in the source code.

VERIFICATION CHECKLIST:
Before finalizing each section, verify:
1. Have I actually seen this in the code, or am I assuming?
2. Did I check the actual implementation, not just the file name?
3. Are my examples pointing to real files that exist?
4. Have I verified what commands actually do by checking their implementation?
5. Am I documenting the actual auth flow used (e.g., OTP vs password)?
6. Have I checked the IaC/deployment scripts for the real CI/CD setup?

FACT-CHECKING PHASE:
After completing the initial guide, perform a systematic fact-check:
1. Go through each technical claim and verify it against the actual codebase
2. Inspect script files and build configurations to understand command behaviors (DO NOT run them)
3. Check that all file paths and function names referenced actually exist
4. Verify version numbers are major versions only
5. Ensure all environment-specific commands use the `<YOUR_ENV>` placeholder
6. Remove any ephemeral data that will quickly become outdated

DEPTH OF ANALYSIS:
- Don't just list technologies - understand how they're actually used
- Check multiple files to understand patterns, not just one example
- Trace through actual request flows to understand architecture
- Read configuration files completely, not just their names
- When in doubt, mark as [Unable to verify] rather than guessing

COMMAND SAFETY:
- NEVER execute any commands during guide generation
- Instead, inspect build files and scripts to understand what commands do:
  - package.json scripts (Node.js)
  - Makefile targets (Make)
  - Gradle/Maven tasks (Java)
  - Cargo.toml (Rust)
  - setup.py/pyproject.toml (Python)
  - Rakefile (Ruby)
  - CMakeLists.txt (C/C++)
  - Or any other build/task configuration files
- Read script files in common directories (scripts/, bin/, tools/, etc.)
- If a command's behavior is unclear from inspection, mark it as [Behavior needs verification]
- The human reviewer will verify command behaviors after generation

Example sections:

```
### Run application

`npm run dev`  # Starts development server with hot reload

```

```
### Run arbitrary query

# Examples for different languages/tools:
npm run database-query --env=<YOUR_ENV> --query="SELECT * FROM users WHERE email = 'user@test.com'"  # Node.js
make db-query ENV=<YOUR_ENV> QUERY="SELECT * FROM users WHERE email = 'user@test.com'"  # Make
./gradlew dbQuery -Penv=<YOUR_ENV> -Pquery="SELECT * FROM users WHERE email = 'user@test.com'"  # Gradle
python scripts/db_query.py --env <YOUR_ENV> --query "SELECT * FROM users WHERE email = 'user@test.com'"  # Python

# Document the actual command for this project, found by inspecting build files/scripts

```

```
### Key Features

- A team Kanban board app
- Create Boards for your teams and manage Tasks on the board  
- Role based access with Guest, Team and Admin roles
- See `docs/user-manual.md` for more

```

IMPORTANT EXAMPLES NOTE:
- All command examples with environment parameters MUST use `<YOUR_ENV>` placeholder
- Example: `npm run deploy --env=<YOUR_ENV>` NOT `npm run deploy --env=dev`
- This prevents accidental operations on shared environments

PLUGINS

- As well as this prompt, the user may supply one or more 'plugin' prompts that provide Items for a particular technology. 
- Plugins are delimited by BEGIN PLUGIN [name]... END PLUGIN [name]
- Include the plugin's documentation in the Developer Guide, incorporating the plugin's Items in the appropriate place. 
- If a plugin has Sections or Topics or Items that are not in the main template, include them in the generated Developer Guide.

--]

# Developer Guide

This is a Developer Guide designed for AI agents working in this codebase. It contains:

- **KEY AGENT RESPONSIBILITIES**: Important rules to follow when developing the application.
- **ARCHITECTURE**: application overview, components, layers, frameworks and libraries, key standards, code layout. 
- **DEVELOPMENT CAPABILITIES**: how to work with the application in a local test environment: interacting with servers, reading logs, running scripts, interactively accessing test data and debugging the app. 

The Developer Guide serves as an interface between the agent and the development environment. It aims to give the agent the knowledge, ‘hands’ and ‘eyes’ it needs to develop your application efficiently, autonomously and with a high degree of success. It also highlights any gaps in your architecture or missing development capabilities, helping the team identify opportunities for improvement. 

# KEY AGENT RESPONSIBILITIES

## Safety

- It is assumed that the application can run in a 'personal development environment', e.g. the user's local machine, or a namespaced cloud environment. 
- You must ensure that all actions you take will only affect the local development environment in a safe way. If in doubt, ask the user.
- Never take any action that affects a shared development environment without an explicit request from the user.
- Never access a production environment in any way.
- Ensure that any commands (e.g. aws cli) you run are configured to use the personal development environment.

## Continuous improvement

- You must help continuously improve this documentation. Correct any gaps or inaccuracies that you find. 
- Ensure that the document remains succinct. It will be read by all agents, so every token counts.

## Verification of changes

- You must verify every change that you make. 
- Don't guess or assume that a change is working unless it is confirmed by: 
  - An automated test, which must be written for new features, bugfixes
  - Or, for smaller changes or debugging: interactive verification using a Development Capability like log/database inspection or interactive browser debugging

## Use already-running servers

- For development environments that support hot reload of changes, use the existing development server/app instance if one is already running, instead of starting a new one or restarting. Use the "Application status" capability to determine if one is running before using "Run application".

# ARCHITECTURE

## Application Overview

### Purpose
[!-- What problem does this application solve? Who are the users? --]

### Type
[!-- Web app, API service, CLI tool, library, mobile app, desktop app, etc. --]

### Domain
[!-- E-commerce, SaaS, internal tool, open source project, etc. --]

### Key Features
[!-- Main functionality and capabilities --]

## Architecture Shape

### Pattern
[!-- Monolith, microservices, serverless, modular monolith, etc. --]

### Deployment
[!-- Single server, distributed, cloud-native, edge, hybrid --]

### Communication
[!-- REST, GraphQL, gRPC, WebSockets, message queues --]

### Scalability
[!-- Stateless, horizontal scaling, vertical scaling, auto-scaling --]

## Tech Stack

### Primary Language(s)
[!-- With versions if specified --]

### Runtime/Platform
[!-- Node.js, Python, JVM, .NET, browser, etc. --]

### Package Manager
[!-- npm, pip, maven, cargo, etc. --]

### Key Dependencies
[!-- Major libraries and frameworks --]

## Frontend

### Framework
[!-- React, Vue, Angular, Svelte, vanilla JS, etc. --]

### Rendering
[!-- SPA, SSR, SSG, hybrid --]

### Routing
[!-- Client-side, server-side, file-based --]

### Styling
[!-- CSS modules, styled-components, Tailwind, Sass, etc. --]

### State Management
[!-- Redux, Zustand, Context, Vuex, etc. Verify by checking actual imports and usage patterns. If not found, mark as [Component state only] or [Not implemented]. Include file examples where state management is used. --]

### Build Tool
[!-- Webpack, Vite, Parcel, esbuild, etc. --]

### UI Components
[!-- Component library, design system --]

### API Communication
[!-- fetch, axios, GraphQL client, etc. --]

## Backend

### Framework
[!-- Express, Django, Spring, Rails, FastAPI, etc. --]

### API Style
[!-- REST, GraphQL, RPC, WebSockets --]

### Middleware
[!-- Logging, rate limiting, CORS, etc. --]

### Background Jobs
[!-- Queue system, cron jobs, workers. Must provide specific examples: "Lambda functions for order processing (see `infra/lib/lambda/process-orders.ts`)" or mark as [Not implemented]. Check for actual job/queue implementations, not just assume based on platform. --]

### File Handling
[!-- Local storage, cloud storage (S3, etc.) --]

## Authentication & Authorization

### Authentication Method
[!-- JWT, sessions, OAuth2, SAML, API keys, etc. MUST verify actual implementation by checking auth middleware, login endpoints, and token/session handling code. Include specific file references like "JWT validation in `src/middleware/auth.ts:verifyToken()`". --]

### Auth Provider
[!-- Self-managed, Auth0, Firebase Auth, AWS Cognito, etc. Check actual configuration and imports. --]

### Session Management
[!-- Storage (Redis, database, memory), expiry strategy. VERIFY by checking where and how sessions/tokens are actually stored. Check for localStorage, sessionStorage, cookies, or server-side storage. Include code references. --]

### Multi-Factor Auth
[!-- TOTP, SMS, email, authenticator apps, OTP. Check login flow for actual MFA implementation. If using OTP instead of passwords, document that here. --]

### Password Policy
[!-- Requirements, reset flow, encryption (bcrypt, argon2, etc.). IMPORTANT: Check if passwords are actually used. Some apps use OTP/magic links only. Document what's actually implemented. --]

### Authorization Model
[!-- RBAC, ABAC, ACL, custom --]

### Roles & Permissions
[!-- User roles, permission structure, inheritance --]

### API Security
[!-- Rate limiting, API keys, OAuth scopes --]

### Token Management
[!-- Access/refresh token strategy, token storage, expiry times --]

### SSO Integration
[!-- LDAP, Active Directory, Google Workspace, etc. --]

## Data Layer

### Primary Database
[!-- PostgreSQL, MySQL, MongoDB, etc. --]

### ORM/ODM
[!-- Drizzle, Prisma, TypeORM, Sequelize, SQLAlchemy, etc. --]

### Migrations
[!-- Tool and strategy. Describe the approach (sequential files, versioned migrations, etc.) but don't mention specific migration numbers as they change frequently. Example: "Sequential SQL files in `db/migrations/`" not "Currently at migration 94". --]

### Caching
[!-- Redis, Memcached, in-memory, etc. --]

### Search
[!-- Elasticsearch, Algolia, database full-text, etc. --]

### Data Validation
[!-- Schema validation tools --]

## Infrastructure & Deployment

### Hosting
[!-- AWS, GCP, Azure, Vercel, Heroku, self-hosted, desktop etc. --]

### Containerization
[!-- Docker, Kubernetes, Docker Compose --]

### Infrastructure as Code
[!-- Terraform, CloudFormation, Pulumi, CDK, etc. --]

### CI/CD
[!-- GitHub Actions, GitLab CI, Jenkins, CircleCI, AWS CodePipeline, etc. MUST check actual CI/CD configuration: look for .github/workflows, .gitlab-ci.yml, Jenkinsfile, or IaC definitions (CDK/Terraform/CloudFormation). Don't assume based on repository host. --]

### Monitoring
[!-- Datadog, New Relic, Prometheus, CloudWatch, etc. --]

### Logging
[!-- Centralized logging solution --]

### Secrets Management
[!-- Vault, AWS Secrets Manager, environment variables, etc. --]

## Development Patterns

### Code Style
[!-- Style guide, linting rules, formatting --]

### Git Workflow
[!-- Branching strategy, PR process --]

### Testing Strategy
[!-- Unit, integration, E2E approach --]

### Error Handling
[!-- Error boundaries, global handlers, logging --]

### Security Patterns
[!-- Input validation, SQL injection prevention, XSS protection --]

### Documentation
[!-- Inline comments, JSDoc, external docs --]

### Configuration
[!-- Environment-based, feature flags --]

## Codebase Structure

[!-- Provide the actual directory structure with explanations, e.g.
```
src/
├── components/     # [Description of what goes here]
├── services/       # [Description]
├── models/         # [Description]
├── utils/          # [Description]
├── api/            # [Description]
└── tests/          # [Description]
```

Include:
- **Entry Points**: Main application files
- **Configuration Files**: What each config file does
- **Generated Files**: What gets generated and should be gitignored
- **Scripts**: Custom scripts and their purposes
- **Documentation**: Where to find more detailed docs --]

# DEVELOPMENT CAPABILITIES

[!-- 
IMPORTANT: Add this safety note at the beginning of this section:

**⚠️ ENVIRONMENT SAFETY NOTE**: Commands in this section use `<YOUR_ENV>` as a placeholder for environment names. Replace this with your personal development environment name (e.g., your username or a dedicated dev environment). NEVER use shared environments like 'dev', 'staging', or 'production' without explicit permission.
--]

## Setup & Initialization

### Using the Personal Development Environment

[!-- Any general notes on ensuring that commands, scripts etc are configured to use the Personal Development Environment. MUST use <YOUR_ENV> placeholder in all examples. --]

### Install dependencies
[!-- Single command to install all project dependencies --]

### Start application
[!-- 
- Command to start/run the application locally, with hot reload/watch mode if available 
- Specify whether this runs in hot reload/watch mode
- VERIFY the actual ports by checking configuration files and start scripts
- Don't assume default ports - check the actual configuration
--]

### Stop application
[!-- Command to stop the application locally --]

### Application status
[!-- Determine if the application is running. Include actual commands that work, verified from scripts or documentation. --]

### Application deployment info
[!-- Determine the application's ports, endpoints etc. MUST verify actual ports from config files, not assume defaults. Check build scripts, config files, or environment files in the appropriate format for the project's language/framework. --]

### Environment setup
[!-- Clear documentation of required environment variables --]

### One-command setup
[!-- Fresh install including dependencies, database, seed data --]

### Environment validation
[!-- Check all required variables and services are configured --]

### Quick reset
[!-- Reset to clean state (database, cache, etc.). INSPECT script implementations to understand what reset commands actually do. Don't assume based on naming - a command like 'database-kick' might just wake up a paused database, not reset it. DO NOT run commands to test. --]

## Build & Development

### Build project
[!-- Compile/build for production --]

### Clean build
[!-- Remove build artifacts and start fresh --]

### Build for different environments
[!-- Separate dev/staging/prod builds --]

### Watch mode
[!-- Automatic rebuild on file changes --]

### Bundle analysis
[!-- Analyse build output size and dependencies --]

### Source maps
[!-- Generate source maps for debugging --]

## Code Quality & Validation

### Run linter
[!-- Static code analysis --]

### Run type checker
[!-- Type validation (TypeScript, Flow, MyPy, etc.) --]

### Format code
[!-- Auto-formatting tool --]

### Fix linting issues
[!-- Auto-fix safe linting problems --]

### Pre-commit validation
[!-- Run all checks before commit --]

### Security scan
[!-- Check for known vulnerabilities --]

### Check code style
[!-- Verify adherence to style guide --]

### Detect unused code
[!-- Find dead code and unused dependencies --]

## Testing

### Run all tests
[!-- Execute complete test suite --]

### Run specific test
[!-- Execute individual test file or test case --]

### Run unit tests
[!-- Fast, isolated tests --]

### Test in watch mode
[!-- Re-run affected tests on changes --]

### Test coverage report
[!-- Code coverage metrics --]

### Run integration tests
[!-- Cross-component/service tests --]

### Run E2E tests
[!-- Full user journey tests --]

### Debug specific test
[!-- Run test with debugger attached --]

### Generate test
[!-- Create test file for existing code --]

### Create test user
[!-- Utility/script for creating a test user, with a particular role if applicable --]

### Log in test user
[!-- How to log in as a test user. May involve hardcoded or logged passwords/OTPs only used in test environments --]

## Database Operations

### Run migrations
[!-- Apply database schema changes --]

### Connect to database
[!-- Access database CLI/shell --]

### Reset database
[!-- Drop and recreate database --]

### Seed database
[!-- Load test/development data --]

### Run arbitrary query
[!-- Execute SQL/queries directly --]

### View schema
[!-- Display current database structure --]

### Rollback migration
[!-- Undo last migration. VERIFY if rollback scripts actually exist (down migrations, rollback commands). Many projects only have forward migrations. If no rollback mechanism exists, mark as [Not implemented - forward-only migrations]. --]

### Backup database
[!-- Create database backup --]

### Restore database
[!-- Restore from backup --]

### Query performance analysis
[!-- Explain/analyse query execution --]

## Debugging & Inspection

### View logs
[!-- Access application logs --]

### Tail logs
[!-- Follow log output in real-time --]

### Interactively use the app
[!-- 
Script or tool to use the app interactively for debugging.

If a web app, it can be very useful to use the e2e testing tool (e.g. Playwright) to implement a script that allows the agent 
to connect to the running app, navigate through and then interactively run Javascript.

Alternatively the environment may provide an MCP server for general browser use.
--]


### Search logs
[!-- Find specific patterns in logs --]

### Filter logs by level
[!-- Show only errors/warnings/info --]

### Connect debugger
[!-- Attach debugger to running process --]

### Inspect running process
[!-- View memory, CPU, active connections --]

### Profile performance
[!-- CPU/memory profiling tools --]

### Trace requests
[!-- Follow request through system --]

## Monitoring

### Health check
[!-- Verify all services are running correctly --]

### View metrics
[!-- Access performance/business metrics --]

### Check service status
[!-- Individual service health checks --]

### Monitor dashboard
[!-- Visual monitoring interface --]

### View error rates
[!-- Error frequency and patterns --]

## Deployment & Release

### Build for production
[!-- Create production-ready build --]

### Run production mode locally
[!-- Test production build locally --]

### View deployment status
[!-- Check current deployed version --]

### Rollback deployment
[!-- Revert to previous version --]

### Run smoke tests
[!-- Basic tests after deployment --]

### Generate release notes
[!-- Create changelog --]

## Further Documentation

### Project overview
[!-- What the application does and how to use it --]

### Available commands
[!-- List all npm/make/gradle commands --]

### Environment variables
[!-- Document all configuration options --]

### API documentation
[!-- Endpoint documentation --]

### Generate documentation
[!-- Auto-generate docs from code --]

### View documentation locally
[!-- Serve docs on local server --]

### Architecture overview
[!-- System design and component interaction --]

### Troubleshooting guide
[!-- Common issues and solutions --]

## Utilities

### Install dependencies
[!-- Add new dependencies --]

### Update dependencies
[!-- Upgrade packages --]

### Check outdated dependencies
[!-- List packages needing updates --]

### Dependency security audit
[!-- Check for vulnerable dependencies --]

### Clean cache
[!-- Clear build/dependency caches --]

### Generate component/module
[!-- Scaffold new code --]

### Find unused dependencies
[!-- Identify removable packages --]

### Validate dependencies
[!-- Check for conflicts or issues --]

## API/Service Specific

### List endpoints
[!-- Show available API routes --]

### Test endpoint
[!-- Make request to specific endpoint --]

### View API documentation
[!-- Access API docs/swagger --]

### Mock external services
[!-- Run with stubbed dependencies --]

### Validate request/response
[!-- Check API contract compliance --]

### Load test endpoint
[!-- Performance test specific endpoints --]

## Frontend Specific

### Build frontend
[!-- Create production bundle --]

### Bundle size analysis
[!-- Analyse JavaScript bundle size --]

### Component explorer
[!-- View components in isolation (Storybook, etc.) --]

### Run accessibility audit
[!-- Check for a11y issues --]

### Lighthouse audit
[!-- Performance and best practices scan --]

### Browser testing
[!-- Cross-browser compatibility tests --]

## Configuration & Environment

### List configuration
[!-- Show current configuration values --]

### Switch environment
[!-- Change between dev/staging/prod configs --]

### Validate configuration
[!-- Check config completeness and validity --]

### Diff configurations
[!-- Compare different environment configs --]

### Encrypt secrets
[!-- Secure sensitive configuration --]

### Export configuration
[!-- Output config for debugging --]

---
Built with https://github.com/martinpllu/agent-dev-guide v1.0.0