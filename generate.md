[!-- 

*** YOUR TASK ***

Analyse the codebase and write a comprehensive Developer Guide for AI agents based on the template in this document.

Write the Developer Guide to `agent-dev-guide.md`

If that file already exists, ask the user if they would like to (a) update the existing file or (b) replace the existing file. 

Always update the 'Built with...' comment including the version number at the end of the file.

- See the Introduction for a the purpose of this document.
- [!-- --] comments are instructions for you, the author of the guide. Don't include them in the output.
- Include all uncommented text as-is
- Thoroughly explore the codebase to discover all key architecture elements and capabilities.
- Discover any available MCP servers and note them in relevant sections.
- Go through each section systematically.
- Think hard and dive deep, using subagents if required. It's extremely important to make this guide as good as possible.
- The guide should be comprehensive yet compact. Every token counts! 
- Link to any documentation or config files that provide more detail. For example, the Architecture section might link to architecture docs found in the codebase. Or the Code Style section might refer to the code auto-formatter config file. 
- Mark any missing architecture elements or capabilities with [Not implemented yet] with an optional sentence or two about how it might be implemented.
- The document contains Sections (# headings), Topics (## headings) and Items (### headings)
- If any Topics are non-applicable fill them with just [Not applicable - REASON]. For example, for the '## Frontend' Topic you might write [Not applicable - backend-only service]. For the '### Containerization` Item you might write [Not applicable - serverless app]  If marking a Topic as not applicable, skip all contained Items.
- Document major framework versions if significant, e.g. React Router v7. Don't document library versions. Never document minor/patch versions.
- Unless otherwise stated, all instructions should pertain to the 'personal development environment' - e.g. 'View logs' is about viewing the local logs. 

Example sections:

```
### Run application

`npm run dev`

```

```
### Run arbitrary query

pnpm tsx scripts/sql-query.ts
e.g.
pnpm tsx scripts/sql-query.ts "SELECT * FROM users WHERE email = 'user@test.com'"

```

```
### Key Features

- A team Kanban board app
- Create Boards for your teams and manage Tasks on the board
- Role based access with Guest, Team and Admin roles
- See `docs/user-manual.md` for more

```

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
[!-- Redux, Zustand, Context, Vuex, etc. --]

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
[!-- Queue system, cron jobs, workers --]

### File Handling
[!-- Local storage, cloud storage (S3, etc.) --]

## Authentication & Authorization

### Authentication Method
[!-- JWT, sessions, OAuth2, SAML, API keys, etc. --]

### Auth Provider
[!-- Self-managed, Auth0, Firebase Auth, AWS Cognito, etc. --]

### Session Management
[!-- Storage (Redis, database, memory), expiry strategy --]

### Multi-Factor Auth
[!-- TOTP, SMS, email, authenticator apps --]

### Password Policy
[!-- Requirements, reset flow, encryption (bcrypt, argon2, etc.) --]

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
[!-- Tool and strategy --]

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

### IaC
[!-- Terraform, CloudFormation, Pulumi, CDK, etc. --]

### CI/CD
[!-- GitHub Actions, GitLab CI, Jenkins, CircleCI, etc. --]

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

## Setup & Initialization

### Install dependencies
[!-- Single command to install all project dependencies --]

### Start application
[!-- 
- Command to start/run the application locally, with hot reload/watch mode if available 
- Specify whether this runs in hot reload/watch mode
--]

### Stop application
[!-- Command to stop the application locally --]

### Application status
[!-- Determine if the application is running --]

### Application deployment info
[!-- Determine the application's ports, endpoints etc --]

### Environment setup
[!-- Clear documentation of required environment variables --]

### One-command setup
[!-- Fresh install including dependencies, database, seed data --]

### Environment validation
[!-- Check all required variables and services are configured --]

### Quick reset
[!-- Reset to clean state (database, cache, etc.) --]

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
[!-- Undo last migration --]

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