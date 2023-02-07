format:
	cargo fmt --quiet

lint:
	cargo clippy --quiet

test:
	cargo test --quiet

run:
	cargo run

build-container:
	# Build the container
	docker build -t n-queens .

release:
	cargo build --release

all: format lint test run release build-container