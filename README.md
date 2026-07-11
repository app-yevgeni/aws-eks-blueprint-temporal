<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/95981c80-bdfd-4271-bb0b-16b2754087ac" />


## AWS | EKS BluePrint Temporal
Temporal Platform: A popular, open-source durable execution engine used by developers to build highly resilient, fault-tolerant applications. It automatically saves execution state, handling retries and system crashes seamlessly.



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

