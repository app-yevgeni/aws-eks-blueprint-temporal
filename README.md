<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/32bb0732-1328-4f1c-926f-e4745c8f72ef" />



## AWS | EKS BluePrint Terrakube
Terrakube is an open-source platform for automating and collaborating on infrastructure as code tasks using Terraform or OpenTofu. It distinguishes itself by supporting customizable workflows, private registries, and integrations with version control systems. The platform also allows dynamic credential management and ephemeral workspaces, offering a secure and scalable alternative to proprietary tools like Terraform Enterprise.



🎯 Architecture Overview
```
✔ Jobs
✔ Executor
✔ Open Registry
✔ Cloud Storage
✔ RDBMS
✔ Security
✔ CLI
```


🧱 Features
```
✅ Fully automated provisioning with Terraform
✅ High availability using multiple subnets in different Availability Zones
✅ Secure connectivity between Application and RDS
✅ Configurable environment variables for database credentials
✅ Easy to extend for other JSON data source
```



🚀 Deployment Options
```
terraform init
terraform validate
terraform plan -var-file="template.tfvars"
terraform apply -var-file="template.tfvars" -auto-approve
```

