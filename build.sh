docker build -t aeroscan/kubernetes-deploy-image:latest .
docker build -t aeroscan/kubernetes-deploy-image:$(cat VERSION) .
docker push aeroscan/kubernetes-deploy-image
