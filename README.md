# docker-mfc_cb.node
* Dockerfile to create an alpine container to run jrudess/mfc_cb.node recorder

* All the functional bits were done by jrudess in [mfc_cb.node](https://github.com/jrudess/mfc_cb.node)

* This just repackages everything into a disposable and easily deployable container.

## Requires
Docker

## Instructions
1. Clone this repo
2. Build the image
3. Run the container
`docker run --name=mfc_cb -v */path/to/persistent/storage/captured_dir/*:/mfc_cb.node/captured/ -v */path/to/persistent/storage/capturing_dir/*:/mfc_cb.node/capturing mfc-cb.node.alpine`

## Configuration
placeholder

## Info
Shell access while the container is running
docker exec -it mfc_cb /bin/ash


