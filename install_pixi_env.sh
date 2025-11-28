#!/bin/bash
set -e

echo "🔧 Installing Pixi environment..."
pixi init .
pixi install

echo ""
echo "✨ Pixi environment successfully built!"
echo "📁 Environment location:"
echo "   ./.pixi/envs/default"
echo ""
echo "➡️  Activate the environment with:"
echo "   pixi shell"
