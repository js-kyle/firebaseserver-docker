# firebaseserver-docker

A Docker image running [firebase-server](https://www.npmjs.com/package/firebase-server), intended to mock the Firebase server service in **automated testing environments**.

## Usage
Pull the image from Docker Hub

```bash
$ docker run --rm jskyle/firebaseserver-docker:latest -p 5000:5555
```

A firebase-server will be available at localhost:5000

Please refer to [firebase-server](https://www.npmjs.com/package/firebase-server) for further usage documentation.
