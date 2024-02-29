# gitbucket docker image file

## Build the image
Clone this repository, enter the root folder of this repository, and run the following command:

```
docker build . -t gitbucket:v1
```

to build an image named **gitbucket** with **v1** as its tag.

## Run a container using this image

```
docker run -d -p 8080:8080 -p 9090:9090 gitbucket:v1
```

This command exposes two ports, *8080* and *9090* bonded to localhost 8080 and 9090 respectively.

The 8080 port is used for the http access while the 9090 port is used for ssh access.

As such, bind the ssh port to *9090* in gitbucket configuration if you want to enable ssh access.
