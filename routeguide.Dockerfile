# This Dockerfile runs the RouteGuide server from
# https://grpc.io/docs/tutorials/basic/python.html

FROM python
RUN pip install grpcio-tools 
RUN git clone -b v1.14.x https://github.com/grpc/grpc
WORKDIR grpc/examples/python/route_guide

EXPOSE 50051
CMD ["python", "route_guide_server.py"]