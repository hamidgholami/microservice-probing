# microservice-probing

There are some combination of of exactly two alphanumeric characters which <br /> contains same character e.g: "aa","22", ... <br />
The application in this cases shows blank page and it doesn't return `uid`.

For testing the app we can run below command:
```sh
docker run --rm -it hamidgholami/test-app:latest
```

### test the script
Also for testing the `test-app.sh` script, we can execute `test-app-test.sh` that contains **counterexample** in `test-script` directory.
```sh
cd test-script
./test-app-test.sh
```