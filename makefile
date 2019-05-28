buildBase:
	docker build --no-cache -f Dockerfile.base -t casesearchBase .
build:
	docker build --no-cache -t casesearch:1.0.0 .