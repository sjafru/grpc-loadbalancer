build_helloworld:
	docker build -t afandy/helloworld:dev . -f helloworld.Dockerfile

build_routeguide:
	docker build -t afandy/routeguide:dev . -f routeguide.Dockerfile

build_grpclb:
	docker build -t afandy/grpc-lb:latest . -f grpclb.Dockerfile

gen_key:
	openssl req -newkey rsa:4096 -nodes -keyout ssl/private/grpc.example.com.key -x509 -days 365 -out ssl/certs/grpc.example.com.crt