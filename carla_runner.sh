#!/bin/sh

# listening to carla will be available on port 2000 not 2002 using configuration below

docker run \
    -p 2000-2002:2000-2002 \
    --cpuset-cpus="0-5" \
    --runtime=nvidia \
    --gpus 'all,"capabilities=graphics,utility,display,video,compute"' \
    -e DISPLAY=$DISPLAY \
    -e SDL_AUDIODRIVER=dummy \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -it \
    carlasim/carla:0.9.13 \
    /bin/bash CarlaUE4.sh $1



#docker run \
#	 -p 2000-2002:2000-2002 \
#	 --cpuset-cpus="0-5" \
#	 --runtime=nvidia \
#	 --gpus 'all,"capabilities=graphics,utility,display,video,compute"' \
#	 -e DISPLAY=$DISPLAY \
#	 -v /tmp/.X11-unix:/tmp/.X11-unix \
#	 -it \
#	 carlasim/carla:0.9.10 \
#	 /bin/bash CarlaUE4.sh $1



#docker run \
#	 -p 2000-2002:2000-2002 \
#	 --cpuset-cpus="0-5" \
#	 --runtime=nvidia \
#	 --gpus 'all,"capabilities=graphics,utility,display,video,compute"' \
#	 -e DISPLAY=$DISPLAY \
#	 -v /tmp/.X11-unix:/tmp/.X11-unix \
#	 -it \
#	 carlasim/carla:0.9.10 \
#	 /bin/bash CarlaUE4.sh -fps=10 -opengl -quality-level=Low $1

