## How to Use This Repository

1. Clone this repository.
2. Install Terraform.
3. Navigate to the desired stack directory (`/stacks/dev`, `/stacks/staging`, or `/stacks/prod`).
4. Initialize Terraform:
   ```bash
   terraform init
   ```
5. Review the execution plan:
   ```bash
   terraform plan
   ```
6. Apply the changes:
   ```bash
   terraform apply