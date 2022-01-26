build_helloworld:
	docker build -t afandy/helloworld:latest . -f helloworld.Dockerfile

build_routeguide:
	docker build -t afandy/routeguide:latest . -f routeguide.Dockerfile

build_grpclb:
	docker build -t afandy/grpc-lb:latest . -f grpclb.Dockerfile

gen_key:
	openssl req -newkey rsa:4096 -nodes -keyout ssl/private/grpc.example.com.key -x509 -days 365 -out ssl/certs/grpc.example.com.crt

app_lb:
	oc new-app --docker-image=afandy/grpc-lb:latest --name=grpc-lb

app_rg1:
	oc new-app --docker-image=afandy/routeguide:latest --name=rg1

app_hw1:
	oc new-app --docker-image=afandy/helloworld:latest --name=hw1