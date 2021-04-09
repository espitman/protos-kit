#!/bin/bash 

protoc --go_out=plugins=grpc:. kit/kit.proto \
&& protoc-go-inject-tag -input=./kit/kit.pb.go \
&& git add . && git commit -m 'kit update' && git push