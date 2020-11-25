# Build the flask application


To split the task into manageable options:
1. [First I built an ubuntu image with flask installed.](./build_flask/README.md)
2. Then I integrated the simple app into the generated Flask image and run the container.

Here is the explanation of the Docker file.

### Dockerfile
Use the flask image from DockerHub
    From ash/flask

Set the working directory to /app
    WORKDIR /app

Copy the application files into the container at /app
    ADD app /app
    ADD app.ini /app
    ADD run.py /app


Expose a port so that nginx can connect
    EXPOSE 8080

Run the command to to start uWSGI
    ENTRYPOINT ["/usr/local/bin/uwsgi", "app.ini"]


Then a script to build the image and run the container from the image.
### start.sh

    image="ash/flask_app"
    app="flask"
    docker build --tag ${image} .

Run the flask in non-interactive / daemon mode and publish the port 8080
    docker run --detach --publish 8080 --name=${app} ${image}

