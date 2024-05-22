build:
	terraform init && terraform apply -auto-approve

v: #verify
	kubectl get namespace


destroy:
	terraform init && terraform destroy -auto-approve