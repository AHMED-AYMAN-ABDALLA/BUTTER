# BUTTER

The Docker image is published to the GitHub Container Registry:

```sh
docker pull ghcr.io/ahmed-ayman-abdalla/butter:latest
```

Pull requests from this repository also publish a temporary image tagged with
the pull request number, for example:

```sh
docker pull ghcr.io/ahmed-ayman-abdalla/butter:pr-123
```

After the first successful workflow run, open the repository's **Packages** section
on GitHub and set the container visibility to **Public** if the image should be
installable without authenticating to GitHub.

Run the published image on port 8080:

```sh
docker run --name butter -d -p 8080:80 ghcr.io/ahmed-ayman-abdalla/butter:latest
```

Open <http://localhost:8080> to view the site. Stop and remove the container with:

```sh
docker rm --force butter
```

## Run with Docker Compose

Build and start the Nginx web server locally:

```sh
docker compose up --build
```

Open <http://localhost:8080> to view the site. Stop the service with:

```sh
docker compose down
```