FROM node:10-alpine AS client_builder
ADD . .
WORKDIR $HOME/submodule_test_client
RUN npm install
RUN npm run build

FROM golang:1.12-alpine AS server_builder
COPY --from=client_builder $HOME/submodule_test_server $HOME/submodule_test_server
COPY --from=client_builder $HOME/submodule_test_client/build $HOME/submodule_test_server/static
WORKDIR $HOME/submodule_test_server

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags "-w" -a -o main .
EXPOSE 3000
CMD ./main
