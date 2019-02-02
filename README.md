# piping-server-load-balancer

Load Balancer for Piping powered by [HAProxy](https://www.haproxy.org/)

NOTE: This project has a problem. When an user quit by <kbd>ctrl</kbd>+<kbd>c</kbd> during sending, the server go wrong. The server can not response anything.

## Usage

```sh
$ docker-compose up
```

Access to for example,
* <http://localhost:8080/mypath1>
* <http://localhost:8080/hoge>
* <http://localhost:8080/foo>
* ...

Each path may be handled by different web servers, and the same path should be handled by the same server.

## Base repository

The base repository is [kakakakakku/docker-haproxy-nginx](https://github.com/kakakakakku/docker-haproxy-nginx)
