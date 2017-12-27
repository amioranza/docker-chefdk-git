FROM chef/chefdk

LABEL maintainer="amioranza@mdcnet.ninja"
LABEL description="Added git to the original image"

RUN apt-get update -y && apt-get install -y git && apt-get clean