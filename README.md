```
git clone https://github.com/cidrblock/xdist-cov-test.git
cd xdist-cov-test
podman build -t xdist-cov-test .
podman run -it -v ${PWD}:/app xdist-cov-test
```
