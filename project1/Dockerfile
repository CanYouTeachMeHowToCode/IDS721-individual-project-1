FROM rust:latest as builder
ENV APP containerized_n_queens_cli
WORKDIR /Users/wuyilun/Desktop/IDS721-individual-project-1/project1/$APP
COPY . .
RUN cargo install --path .
 
FROM debian:buster-slim
RUN apt-get update && rm -rf /var/lib/apt/lists/*
COPY --from=builder /usr/local/cargo/bin/$APP /usr/local/bin/$APP
ENTRYPOINT [ "/usr/local/bin/containerized_n_queens_cli" ]