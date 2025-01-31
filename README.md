# BayesianReasoningExamples

## Setting up podman

```bash
brew install podman
podman init
podman start
```

## Building and Running Jupyter Lab

To build a image with the name juypterlab run the first command below. To create the container with name juypterlab and run it use the second command below:

```bash
podman build . --tag juypterlab
podman  run --mount type=bind,source="$(pwd)"/work,target=/home/jovyan/work  -p 8888:8888 --name juypterlab --rm -it juypterlab
```

## Accessing notebooks

Look in the juypterlab container log for the following section:

```log
   To access the server, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/jpserver-2-open.html
    Or copy and paste one of these URLs:
        http://localhost:8888/lab?token=9d1c86a3db231e4a4dcd677b93e377711ba4f9dd19537f63
        http://127.0.0.1:8888/lab?token=9d1c86a3db231e4a4dcd677b93e377711ba4f9dd19537f63
```

Cut and past one of the URLs into you browser. Then you should see Juypter Lab with a SmokeTest notebook. Make sure the notebook executes without errors.

## Jupyter Lab Docker Container

### Source Links

- Documentation: <https://jupyter-docker-stacks.readthedocs.io/en/latest/>
- Image Sources: <https://quay.io/organization/jupyter>
- Image the Dockerfile uses is: <https://quay.io/repository/jupyter/scipy-notebook?tab=info>
- Specific image: quay.io/jupyter/scipy-notebook:python-3.12.8

### Remote into the contaner to explore

```bash
podman exec -i juypterlab /bin/bash
```

### Structure

```log
.
├── .config
│   └── matplotlib
├── .ipython
├── .jupyter
│   ├── custom
│   │   ├── current_theme.txt
│   │   ├── custom.css
│   │   ├── custom.js
│   │   └── fonts
│   ├── jupyter_server_config.py
│   └── lab
│       ├── user-settings
│       │   └── @jupyterlab
│       │       └── apputils-extension
│       │           ├── notification.jupyterlab-settings
│       │           └── themes.jupyterlab-settings
│       └── workspaces
│           └── default-37a8.jupyterlab-workspace
├── .local
│   └── share
│       └── jupyter
│           └── runtime
│               ├── jpserver-2-open.html
│               ├── jpserver-2.json
│               └── jupyter_cookie_secret
├── .profile
└── work
    ├── .ipynb_checkpoints
    │   └── SmokeTest-checkpoint.ipynb
    ├── SmokeTest.ipynb
    └── struct.txt

```
