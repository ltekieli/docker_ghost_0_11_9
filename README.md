```
docker run --rm -it --net host \
    -v "${PWD}"/config.js:/workspace/ghost/config.js \
    -v "${PWD}"/content:/workspace/ghost/content \
    -v "${PWD}"/Saga:/workspace/ghost/content/themes/Saga \
    ghost /bin/bash
```
