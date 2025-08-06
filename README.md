# SHACL Validator for LDES & TREE
This repository contains a [SHACL](https://www.w3.org/TR/shacl/) validator for verifying LDES (and TREE) content based on the ITB test suite's [RDF validation](https://www.itb.ec.europa.eu/docs/guides/latest/validatingRDF/) and the [LDES SHACL](https://github.com/rorlic/ldes-shacl) (and [TREE SHACL](https://github.com/rorlic/tree-shacl)) shapes.

It can be used for verifying the response of a collection, root or subsequent LDES (or TREE) node request, both online and offline. You can either provide a URL, upload a file or simply copy/paste some content. Various RDF serializations as supported.

## Build
To build the solution, run the following (bash) shell scripts:
```bash
chmod +x ./build/*.sh
./build/get-tree-shapes.sh
./build/get-ldes-shapes.sh
./build/create-resources.sh
```
This will retrieve the latest SHACL shapes for both TREE and LDES. If will copy them to a resources directory that is used by the validator. In addition, the banners with instructions are prepared and also copied to the resources directory.

## Run
To start the solution, run:
```bash
docker compose up -d --wait
```
When the command ends, the validator is available for use running in a docker container.

## Test
To use the validator, go to the [LDES validator](http://localhost:8088/shacl/ldes/upload) (or [TREE validator](http://localhost:8088/shacl/tree/upload)) and follow the instructions.

## Cleanup
To stop the solution, run:
```bash
docker compose down
rm -rf resources
```
This will stop the validator docker container and cleanup the resources.
