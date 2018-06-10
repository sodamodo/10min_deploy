gcloud auth login
gcloud container clusters get-credentials node-cluster-1 --zone us-west1-a --project node-js-test-206819
gcloud config set project node-js-test-206819

# Build image
docker build -t nodejs-test .

#This needs to be called??
gcloud auth configure-docker

#tag previously build image
docker tag nodejs-test gcr.io/node-js-test-206819/nodejs-test
#push image to google respository
docker push gcr.io/node-js-test-206819/nodejs-test

#Get list of images on repo
gcloud container images list-tags gcr.io/node-js-test-206819/nodejs-test

kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
