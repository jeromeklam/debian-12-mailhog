# debian-12-mailhog

```
docker build -t="freeasso/debian-12-mailhog" .
```

```
docker run -it -p 8525:8025 -d -v --name="debian-12-mailhog" freeasso/debian-12-mailhog /bin/bash
```