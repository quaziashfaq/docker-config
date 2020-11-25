# Running from updated flask
From ash/flask

# Set the working directory to /app
RUN mkdir /app
WORKDIR /app

#Copy the application files into the container at /app

COPY app /app/app
COPY app.ini /app
COPY run.py /app

EXPOSE 8080

# run the command to to start uWSGI
ENTRYPOINT ["/usr/local/bin/uwsgi", "app.ini"]
