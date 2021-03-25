# Test
Only follow these instructions if you want to run `test.php` in a container.

Replace the version number (`5.6`) in `dd-legacy-5.6` and `docker/5.6.Dockerfile` with the version you want to test (based on the available versions in the `docker` folder.

Run these commands from the root of the project.

- Build
```shell
docker build -t dd-legacy-5.6 . -f docker/5.6.Dockerfile
```

- Run
```shell
docker run -t --rm dd-legacy-5.6
```