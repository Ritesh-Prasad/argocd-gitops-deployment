*/creating cluster */
kops create cluster --name ritesh.k8s.local --zones ap-south-1a --control-plane-image ami-05d2d839d4f73aafb  --control-plane-count=1 --control-plane-size c7i-flex.large --image ami-05d2d839d4f73aafb  --node-count=2 --node-size c7i-flex.large
