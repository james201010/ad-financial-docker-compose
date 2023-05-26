# ad-financial-docker-compose

## AD-Financial running as a Docker-Compose application.


Use the commands below to set deploy:

### Clone the GitHub repository

Navigate to the directory where you want the GitHub repository to be cloned to.

Clone this GitHub repository using the command below:

```
git clone https://github.com/james201010/ad-financial-docker-compose.git adfin-docker
```

Change directory to where the repo has been cloned
Example below:

```
cd /home/ec2-user/environment/adfin-docker
```


Set lab user id to at least 5 character name. This is used to create the Application name and the CSaaS RBAC User and Role

Example below:
```
export appd_workshop_user=jrshn
```

### Switching to your own controller

**OPTIONAL:** If you want to target your own controller then edit the '/home/ec2-user/environment/adfin-docker/controller-config.yaml' file with your controller details and the user name and password for a controller login user that has the **'Account Owner'** role assigned.  Then set the variable that points to the 'controller-config.yaml' file like the example below. (**Do this Before you run setup_workshop.sh**) - (**Only run setup_workshop.sh once**)

```
export appd_controller_details_file_path=./controller-config.yaml
```

When you provide your own 'controller-config.yaml' file, then you have the option to tell the setup utility to create a unique RBAC User and Role for a lab participant or not by setting the variable shown below to either true or false.  The default vaule is false.

```
export appd_controller_create_rbac_user=true
```


### Workshop setup
Then run the setup script with the command below:

```
./setup_workshop.sh
```



PLEASE! When you are finished with the workshop, kindly run the 'teardown_workshop.sh' script to delete all the resources in AWS and the AppDynamics Controller that were created during the workshop by using the commands below:

Example below:
```
cd /home/ec2-user/environment/modernization_workshop

./teardown_workshop.sh
```

