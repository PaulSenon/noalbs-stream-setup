FROM b3ckontwitch/sls-b3ck-edit

# # Install dependencies
# RUN apt-get update && \
#     apt-get install -y ca-certificates libssl-dev openssl git && \
#     apt-get install -y tclsh pkg-config cmake libssl-dev build-essential && \
#     rm -rf /var/lib/apt/lists/*

# # Download and decompress Nginx
# RUN mkdir -p /tmp/build && \
#     cd /tmp/build && \
#     git clone https://github.com/hwangsaeul/libsrt.git && \
#     cd ./libsrt && \
#     ./configure --enable-testing && \
#     make

# WORKDIR /tmp/build/libsrt    
EXPOSE 3000/udp
EXPOSE 8080
# CMD ["./srt-live-transmit", "-v", "srt://:34597", "srt://:3001"]