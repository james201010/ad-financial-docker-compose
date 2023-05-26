## AD-Financial running as a Docker-Compose application


Use the steps below to deploy AD-Fiancial as a self-contained docker-compose application.

This application needs 8GB Memory and 60GB-80GB of Disk to run properly.

### Setup Steps

Navigate to the directory where you want the GitHub repository to be cloned to.

1. Required: Clone this GitHub repository using the command below:

```
git clone https://github.com/james201010/ad-financial-docker-compose.git adfin-docker
```

2. Required: Change directory to where the repo has been cloned.  Example below:

```
cd /home/ec2-user/environment/adfin-docker
```

3. Required: Set the workshop root directory variable to where the 'setup_workshop.sh' file resides.  Example below:

```
export appd_workshop_root_directory=/home/ec2-user/environment/adfin-docker/
```

4. Optional: Set the flag to install prerequisite software on AL2 OS (Java 1.8, Docker-Compose) (default = false)

```
export appd_workshop_install_prereqs=true
```

5. Optional: Set the flag to increase the AL2 VM to 80BG if using a Cloud9 VM (default = false).  Example below:

```
export appd_workshop_resize_disk=true
```

6. Required: Set the lab user id variable to at least 5 character name. This is used to construct the Application name and create the CSaaS Controller RBAC User and Role.  Example below:
```
export appd_workshop_user=jrshn
```

### Targeting your own CSaaS Controller

**OPTIONAL:** If you want to target your own controller then edit the '/home/ec2-user/environment/adfin-docker/controller-config.yaml' file with your controller details and the user name and password for a controller login user that has the **'Account Owner'** role assigned.  Then set the variable that points to the 'controller-config.yaml' file like the example below. (**Do this Before you run setup_workshop.sh**) - (**Only run setup_workshop.sh once**)

```
export appd_controller_details_file_path=./controller-config.yaml
```

When you provide your own 'controller-config.yaml' file, then you have the option to tell the setup utility to create a unique CSaaS Controller RBAC User and Role for a lab participant or not, by setting the variable shown below to either true or false (default = false).  Example below:

```
export appd_controller_create_rbac_user=true
```


### Workshop setup
Then run the setup script with the command below:

```
./setup_workshop.sh
```



When you are finished with the workshop, kindly run the 'teardown_workshop.sh' script to delete all the resources in the AppDynamics CSaaS Controller that were created during the workshop setup by using the example commands below:
```
cd /home/ec2-user/environment/modernization_workshop

./teardown_workshop.sh
```

