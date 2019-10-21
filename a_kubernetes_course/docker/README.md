# Docker

Docker is by far the most popular container engine out there. Its widely adopted and used by developers and enterprise companies.
In our quest to learn K8s, I detail here how I created images for both a frontend and backend applications that we will be using through out this course. You can still use any other apps for the course as long as images created are accessible by Kubernetes Engine.

## Frontend

For the frontend, I will be using my own website and blog which is a Nodejs SSR Reactjs application build on top of Nextjs.
I have setup this [GitHub action](https://github.com/zemuldo/docker-build-push) to automatically build the image to `docker.io` and `gcr.io`. You can check it out. I will write a tutorial on that in the future. 
You can still build images and push the manually from your local machine.

