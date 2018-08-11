# dcos-build
terraform and ansible for building dc/os from source

**Prerequisites**
- Terraform 0.7.1
- Ansible 2.4.2

**Setup**
1. Configure AWS credentials (if using AWS CLI ```aws configure```)
2. Run terraform to create build instance
3. Update ```hosts``` file with build host IP
4. Update ```default_vars``` with DC/OS version and AWS credentials
5. Run ```ansible-playbook -v build.yml -i hosts```
