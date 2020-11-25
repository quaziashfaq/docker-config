# Running from updated flask
From ash/flask

# Set the working directory to /app
WORKDIR /app

#Copy the application files into the container at /app
ADD app /app
ADD app.ini /app
ADD run.py /app

EXPOSE 8080

# run the command to to start uWSGI
ENTRYPOINT ["/usr/local/bin/uwsgi", "app.ini"]
