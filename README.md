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

## Jupyter Lab Docker Container

### Source Links

- Documentation: <https://jupyter-docker-stacks.readthedocs.io/en/latest/>
- Image Sources: <https://quay.io/organization/jupyter>
- Image the Dockerfile uses is: <https://quay.io/repository/jupyter/scipy-notebook?tab=info>
- Specific image: quay.io/jupyter/scipy-notebook:python-3.12.8

### Remoting in to explore

```bash
podman exec -i juypterlab /bin/bash
```

### Structure
