FROM scratch
COPY /helloworld.wasm /helloworld.wasm
ENTRYPOINT [ "helloworld.wasm" ]