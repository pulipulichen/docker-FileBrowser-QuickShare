# Dockerhub

- https://docs.docker.com/get-started/04_sharing_app/
- https://hub.docker.com/
- `docker image ls | head` 找出合適的名稱，例如「docker-filebrowser-quickshare-filebrowser」
- 建立合適的repo https://hub.docker.com/
- `docker tag docker-filebrowser-quickshare-filebrowser pudding/docker-app-filebrowse-20230822-1557`
- `docker push pudding/docker-app-filebrowse-20230822-1557`
- 修改Dockerfile 

````
FROM pudding/docker-app-filebrowse-20230822-1557
````