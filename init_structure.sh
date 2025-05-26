#!/bin/bash

mkdir -p diagrams
mkdir -p labs/week01-routing/ospf-multi-area/config
mkdir -p labs/week02-mpls/l3vpn-basic/configs
mkdir -p labs/week05-automation/{ansible-playbooks,python-scripts,templates}
mkdir -p automation/{ansible,python,templates}
mkdir -p designs/{HLD,LLD,slide-decks}
mkdir -p linkedin-posts

echo "# Network Lab Project" > README.md
echo "✅ Folder structure created."

# Add placeholder files to ensure folders are tracked
find . -type d -empty -exec touch {}/.gitkeep \;
