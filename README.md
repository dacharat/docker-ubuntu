# Docker Ubuntu

### Including

- git
- python 3
- java 11

## How to use?

- Build an image

```
docker build -t <image-name> .
```

- Run via `docker`

```
docker run -it <image-name>
```

- Run via `docker-compose`

```
docker-compose up -d

docker exec -it oop2 bash
```

or

```
docker-compose run myubuntu bash
```
