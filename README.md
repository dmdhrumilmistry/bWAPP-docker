# bWAPP-Docker

Setup bWAPP inside a docker container. bWAPP is a vulnerable Web Application which is used to learn various web based attack vectors. It could be insecure to run the application on the host machine. bWAPP-docker dockerizes the application to securely access the application without compromising host machine security.

## Installation

- pull lamp image
    ```bash
    docker pull mattrayner/lamp
    ```

- build docker image
    ```bash
    docker build -t bwapp-docker .
    ```

- Run bWAPP container
    ```bash
    docker run -d -p 80:80 bwapp-docker
    ```

- Initialize bWAPP on `http://localhost:80/install.php`

## License

MIT License