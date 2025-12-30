# ----------------------------
# Default Terraform Deployment
# ----------------------------
# Runs the default sequence of commands to update the repository and apply Terraform changes automatically

default:
	git pull
	terraform init
	terraform apply -auto-approve -var token=$(token)
