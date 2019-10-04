# docker-zserv
Containerized zebra API

## usage

Start zserv container.

```shell
docker run -it --rm --net=host --name zserv --cap-add=NET_ADMIN --cap-add=sys_admin -v/srv/zebra:/zebra kyokuheki/zserv
ls -al /srv/zebra/zserv.api
```

For example, if you want to use gobgpd FIB manipulation, you exeute the command described below.

```shell
mkdir /srv/gobgpd
cat > /srv/gobgpd/gobgpd.yaml <_EOT_
[zebra]
    [zebra.config]
        enabled = true
        url = "unix:/zebra/zserv.api"
        redistribute-route-type-list = ["connect"]
        version = 2
_EOT_
docker run -d --rm --net=host --name gobgpd -v/srv/gobgp:/gobgp -v /srv/zebra:/zebra kyokuheki/gobgp
```
