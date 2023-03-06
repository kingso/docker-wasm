# Compile a C file and run in Docker/WASM container

1. [Compile your WASM binary](#compile-your-wasm-binary)
2. [Build the image](#build-the-image)
3. [Run the WASM container](#run-the-wasm-container)


### Compile your WASM binary
```docker
 docker run --rm -itd -v ${pwd}:/src emscripten/emsdk emcc helloworld.c -o helloworld.wasm
 ```

---

### Build the image
```docker
docker buildx build --platform wasi/wasm -t docker-wasm:0.1 .
```

---

### Run the WASM container
```docker
docker container run --rm --name=dockerwasm --runtime=io.containerd.wasmedge.v1 --platform=wasi/wasm docker-wasm:0.1
```

---