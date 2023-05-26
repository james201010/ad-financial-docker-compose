## AD-Financial running as a Docker-Compose application

![image](https://github.com/james201010/ad-financial-docker-compose/assets/7450910/34964057-7682-4478-9cc2-502bb89ba90f)

Use the steps below to deploy AD-Financial as a self-contained docker-compose application.

This application needs 8GB Memory and 70GB-80GB of Disk to run properly.  If you are **not** using an AWS Cloud9 instance (t3.large) then it is assumed that you already have the following on the VM you will run the application on:

- Java 1.8 or above
- Docker-Compose (compatible with version 1.27.2)
- At least 8GB free Memory
- At least 70GB free disk space

If you are using a clean AWS Cloud9 instance (t3.large) then you can set the variables **appd_workshop_install_prereqs=true** and **appd_workshop_resize_disk=true** and the setup utility will take care of those prerequisites for you.

### Set Setup Variables First

Navigate to the directory where you want the GitHub repository to be cloned to.

1. **Required**: Clone this GitHub repository using the command below:

```
git clone https://github.com/james201010/ad-financial-docker-compose.git adfin-docker
```

2. **Required**: Change directory to where the repo has been cloned.  Example below:

```
cd /home/ec2-user/environment/adfin-docker
```

3. **Required**: Set the workshop root directory variable to where the 'setup_workshop.sh' file resides.  Example below:

```
export appd_workshop_root_directory=/home/ec2-user/environment/adfin-docker/
```

4. **Optional**: Set the flag to install prerequisite software on AL2 OS (Java 1.8, Docker-Compose) **(default = false)**

```
export appd_workshop_install_prereqs=true
```

5. **Optional**: Set the flag to increase the AWS Cloud9 EBS Volume to 80GB if using a Cloud9 VM **(default = false)**.  Example below:

```
export appd_workshop_resize_disk=true
```

6. **Required**: Set the lab user id variable to at least 5 character name. This is used to construct the Application name and create the CSaaS Controller RBAC User and Role.  Example below:
```
export appd_workshop_user=jrshn
```

7. **Required**: To target the application to your own CSaaS Controller then edit the '/home/ec2-user/environment/adfin-docker/controller-config.yaml' file with your controller details and the user name and password for a controller login user that has the **'Account Owner'** role assigned.  Then set the variable that points to the 'controller-config.yaml' file like the example below. Do this **before you run** the **setup_workshop.sh**

```
export appd_controller_details_file_path=/home/ec2-user/environment/adfin-docker/controller-config.yaml
```

8. **Optional**: When you provide your own 'controller-config.yaml' file, then you have the option to tell the setup utility to create a unique CSaaS Controller RBAC User and Role for a lab participant or not, by setting the variable shown below to either true or false **(default = false)**.  Example below:

```
export appd_controller_create_rbac_user=true
```
### Set ID's for Default RBAC Roles for your Controller

If you set the flag telling the setup utility to create a unique CSaaS Controller RBAC User and Role for a lab participant, then you will need to adjust the ID's for the default Roles you want assigned to that RBAC User.  Edit the './scripts/workshop-setup.yaml' on line 324 before you run the setup script.


### Run the Setup Script
Run the setup script with the command below after you have set all the appropriate variable mentioned above.  **Only run setup_workshop.sh once**

```
./setup_workshop.sh
```


### Remove the Application and associated Controller assets
When you are finished with the application, kindly run the 'teardown_workshop.sh' script to delete all the resources in the AppDynamics CSaaS Controller that were created during the setup by using the example commands below:
```
cd /home/ec2-user/environment/adfin-docker

./teardown_workshop.sh
```

