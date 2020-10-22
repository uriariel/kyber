FROM teeks99/clang-ubuntu

RUN apt-get update && apt-get -y install ninja-build cmake libssl-dev
COPY . /kyber
RUN mkdir /kyber/build-ninja
WORKDIR /kyber/build-ninja
RUN cmake -DBUILD_SHARED_LIBS=ON -GNinja ..
RUN ninja
