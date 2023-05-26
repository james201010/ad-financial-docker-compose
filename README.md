# ad-financial-docker-compose

## Artifacts for AD-Financial running as a Docker-Compose application.



Then use the commands below to finish setting up the rest of the lab:

### Clone the GitHub repository

Navigate to the directory where you want the GitHub repository to be cloned to.

Clone this GitHub repository using the command below:

```
git clone https://github.com/james201010/ad-financial-docker-compose.git adfin-docker
```

Change directory to where the repo has been cloned

```
cd /home/ec2-user/environment/adfin-docker
```


Set lab user id to at least 5 character name
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
Then run the setup script with the command below which performs the tasks listed in the link below:
https://povpbmodernize.appdpartnerlabs.net/30_workshop_setup/5_start_engines.html#what-the-setup-utility-does
Note: The initial setup takes about 24 minutes to complete

```
./setup_workshop.sh
```

Once the initial setup has completed, then next step is to create the EKS cluster with the commands below:
Note: The EKS cluster creation takes about 15 minutes to complete

```
cd /home/ec2-user/environment/modernization_workshop

./create_eks_cluster.sh
```

Once the EKS cluster creation has completed, then next step is to deploy the 'post-modernization' application the EKS cluster with the commands below:

```
cd /home/ec2-user/environment/modernization_workshop

./deploy_eks_application.sh
```

Once the 'post-modernization' application deployment has completed, then next step is to deploy the AppDynamics Agents with the commands below:

```
cd /home/ec2-user/environment/modernization_workshop

./deploy_appdynamics_agents.sh
```

Now it's time to work through the observability sections of the workshop lab guide - TBD




PLEASE! When you are finished with the workshop, kindly run the 'teardown_workshop.sh' script to delete all the resources in AWS and the AppDynamics Controller that were created during the workshop by using the commands below:

```
cd /home/ec2-user/environment/modernization_workshop

./teardown_workshop.sh
```

