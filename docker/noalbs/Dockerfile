FROM rust:1.67 as builder
RUN apt-get update && \
  apt-get install -y git
WORKDIR /usr/src
RUN git clone https://github.com/715209/nginx-obs-automatic-low-bitrate-switching.git
WORKDIR /usr/src/nginx-obs-automatic-low-bitrate-switching
RUN cargo install --path . && \
  cargo build --release

FROM debian:bullseye-slim
# RUN apt-get update && apt-get install -y extra-runtime-dependencies && rm -rf /var/lib/apt/lists/*
COPY --from=builder /usr/local/cargo/bin/noalbs /usr/local/bin/noalbs
WORKDIR /usr/local
CMD ["noalbs"] 