#!/bin/bash

if [ ! -d "../agent-dev-example" ]; then
    echo "Directory ../agent-dev-example not found. Cloning repository..."
    git clone https://github.com/martinpllu/agent-dev-example ../agent-dev-example
else
    echo "Directory ../agent-dev-example already exists."
fi

if [ -f "../agent-dev-example/agent-dev-guide.md" ]; then
    echo "Removing existing agent-dev-guide.md..."
    rm ../agent-dev-example/agent-dev-guide.md
fi

echo "Running claude with generate.md and plugins/sst.v3.md..."

cd ../agent-dev-example
claude --dangerously-skip-permissions "$(cat ../agent-dev-guide/generate.md ../agent-dev-guide/plugins/sst.v3.md)"
