# BaysainReasoningExamples

## Setup
### Python Notebook Setup

1. curl https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh -o ~/miniconda3/miniconda.sh
2. bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
3. ~/miniconda3/bin/conda init zsh
4. TBD Python version

### Jupyter Lab Setup

1. Create Python Env (pystan require 3.9): conda create -n LaplaceExamples python=3.9 numpy scipy sympy pystan jupyterlab
2. git clone 
3. Spin up Env: conda activate LaplaceEnv
4. Setup to use vi for cell mangement: python -m pip install jupyterlab-vim
5. Start notebook: jupyter lab --notebook-dir=$pwd
