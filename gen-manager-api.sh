mkdir -p manager-api/proto
rm -rf .manager-api/proto/*
protoc \
    -I=. \
    --go_out=. \
    --go-grpc_out=. \
    --grpc-gateway_out=. \
    --openapiv2_out=manager-api/docs \
    --openapiv2_opt logtostderr=true \
    manager-api/api/*.proto