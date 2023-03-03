rust-version:
	@echo "Rust command-line utility versions:"
	rustc --version 			#rust compiler
	cargo --version 			#rust package manager
	rustfmt --version			#rust code formatter
	rustup --version			#rust toolchain manager
	clippy-driver --version		#rust linter

format-check:
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

build-release:
	cargo build --release

all: format-check lint test run build-container build-release