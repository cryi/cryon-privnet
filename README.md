### SHIELD private network

- consists of 3 nodes
- only one node is exposed outside:
  - RPC Port 20000
  - username: user
  - password: pass
- persistance to data folder `./data`

#### Quickstart:

```sh
docker-compose up -d
```

#### Generating blocks:

```sh
./tools/mine.sh     # generates 1 block
./tools/mine.sh 5   # generates 5 blocks
```

#### Example RPC call:

```sh
curl --user user:pass --data-binary '{"jsonrpc": "2.0", "id":"rpc", "method": "getnetworkinfo", "params": [] }' -H 'content-type: application/json;' http://127.0.0.1:20000/
```
