# SHACL Validator for TREE and LDES
> TODO: document this solution, purpose, benefits, ITB, etc.

## Build
To build the solution, run:
```bash
chmod +x ./build/*.sh
./build/get-tree-shapes.sh
./build/get-ldes-shapes.sh
./build/create-resources.sh
```

## Run
To start the solution, run:
```bash
docker compose up -d --wait
```

## Test
To run a validator, go to the [LDES validator](http://localhost:8088/shacl/ldes/upload) and follow the instructions.


## Cleanup
To stop the solution, run:
```bash
docker compose down
rm -rf resources
```
