# Docker

To run things on Kubernetes, we will create docker images of the apps that we will deploy on K8s and for this I used my website written in Nextjs and its API written also in Nodejs.

## UI

The UI is written in Nexjs
To deploy the following stages are involved.

### Setup Circle CI to build.


### Inside Docker Image

- Initialize .env.production file
- Build app
- Build stories
- Start server

### Push Docker image to  gcr.io

docker build

docker tag zemuldocom_ui  gcr.io/zemuldo-com-website-blog/site-ui:latest