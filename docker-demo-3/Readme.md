# Jenkins Instance

# docker-demo project (Freestyle)
# Git Repo
https://github.com/wardviaene/docker-demo

# Before build
sudo su - jenkins
aws configure

# Build (Execute shell)
docker build -t ${ecr-repo-url}:${GIT_COMMIT} .
eval "$(aws ecr get-login --region ap-southeast-1)"
docker push ${ecr-repo-url}:${GIT_COMMIT}

# Post Build (Trigger parameterized)
Project to build: docker-demo-deploy,
Trigger when build is: Stable
Parameters (Predefined): APP_VERSION=${GIT_COMMIT}


# docker-demo-deploy (Freestyle)
# Git repo
https://github.com/wardviaene/terraform-course

# Build (Execute shell)
cd docker-demo-3/
scripts/configure-remote-state.sh
touch mykey
touch mykey.pub
terraform apply -target aws_ecs_service.myapp-server -var MYAPP_SERVICE_ENABLE="1" -var MYAPP_VERSION=${MYAPP_VERSION}

# This project is parameterized
Name: MYAPP_VERSION

