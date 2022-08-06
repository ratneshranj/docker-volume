# docker-spring-war

#Step 1: Building an image
#Syntax: docker build -t <image-name> <location of dockerfile>
-------------------------------------------------------------------
docker build -t docker-volume-spring-boot .

#Step 2: List all the images
#Syntax: docker images
-------------------------------------------------------------------
docker images


#Step 3: Run a container from the image with a volume mount
#Container volume is the logs directory for example or war directory
Example:  docker run -itd  -p <host-port>:<container-port> -v <host-volume-absolute-path>:<container-volume-path>  --name=<container-name> <image-id>
---------------------------------------------------------------------------------------------
docker run -itd  -p 3333:9090  -v G:/docker_data:/opt/app/log --name="docker-volume-container" docker-volume-spring-boot