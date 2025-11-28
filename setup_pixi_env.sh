#!/bin/bash
set -e

echo "🧹 Removing previous Pixi environment..."
rm -f pixi.toml pixi.lock
rm -rf .pixi

echo "🔧 Initializing Pixi project..."
pixi init . || true

echo "🐍 Setting Python version..."
pixi add python=3.11

echo "🔬 Installing scientific packages..."
pixi add numpy=1.26 scipy pandas matplotlib pillow
pixi add netcdf4 zarr numexpr xarray tqdm dask numcodecs

echo "🧮 Math & optimization tools..."
pixi add sympy numba bottleneck pyfftw

echo "🧰 General utilities..."
pixi add pyyaml json5 imageio

echo "🎨 Visualization & imaging..."
pixi add seaborn scikit-image scikit-learn

echo "🌀 PyVista / 3D tools..."
pixi add pyvista pyvistaqt

echo "📓 Jupyter environment..."
pixi add jupyterlab ipywidgets

echo "📘 Documentation stack..."
pixi add sphinx myst-parser furo breathe exhale

echo "🛠 Dev tools..."
pixi add mypy black ruff

echo "🛠 paperfig package..."
pixi add --pypi "paperfig@git+https://github.com/AdamsMP92/paperfig.git"


echo ""
echo "✨ Pixi environment successfully built!"
echo "📍 Interpreter:"
echo "   $(pwd)/.pixi/envs/default/bin/python"
echo "➡️  Activate with: pixi shell"
