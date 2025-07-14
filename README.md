# SHACL Validator for TREE and LDES
> TODO: document this solution, purpose, benefits, ITB, etc.

## Prerequisites
To get or refresh the SHACL shapes, run:
```bash
./get-tree-shapes.sh
./get-ldes-shapes.sh
```

## Build
To build the solution, run:
```bash
docker compose pull
```

## Run
To start the solution, run:
```bash
docker compose up -d
```

## Test
To run a validator, choose a specification [TREE](http://localhost:8088/shacl/tree/upload) OR [LDES](http://localhost:8088/shacl/ldes/upload) and follow the instructions.


## Cleanup
To stop the solution, run:
```bash
docker compose down
```