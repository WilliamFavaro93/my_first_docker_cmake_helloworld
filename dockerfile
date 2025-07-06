FROM gcc:latest
RUN apt-get update && apt-get install -y make gcc
RUN apt-get install -y cmake
COPY . /gnu_test
WORKDIR /gnu_test/
RUN mkdir build
RUN cd build && cmake .. && make
# Run the executable
CMD ["./build/my_exe"]