# piping-server-load-balancer

Load Balancer for Piping Server powered by [HAProxy](https://www.haproxy.org/)

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
