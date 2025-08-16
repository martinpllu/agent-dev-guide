#!/bin/bash

# Test if ../agent-dev-example directory exists, if not clone it
if [ ! -d "../agent-dev-example" ]; then
    echo "Directory ../agent-dev-example not found. Cloning repository..."
    git clone https://github.com/martinpllu/agent-dev-example ../agent-dev-example
else
    echo "Directory ../agent-dev-example already exists."
fi

# Remove existing agent-dev-guide.md if it exists
if [ -f "../agent-dev-example/agent-dev-guide.md" ]; then
    echo "Removing existing agent-dev-guide.md..."
    rm ../agent-dev-example/agent-dev-guide.md
fi

# Run claude with the concatenated files in a subshell in the example directory
echo "Running claude with generate.md and plugins/sst.v3.md..."
cat generate.md plugins/sst.v3.md | (cd ../agent-dev-example && claude)