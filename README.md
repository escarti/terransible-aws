# HOW TO

0. Go to AWS console and create user with Admin Access and download credentials.

1. generate ssh key pair that will be used to create EC2 instances on your local computer

    ``shh-keygen``

2. user terransible.env to create your .env file and fill the variables with your values

    ``cp terransible.env .env``

3. Build container

    ``docker-compose build``

4. Run container

    ``docker-compose up -d``

5. Connect to container

## ONLY AFTER BUILDING (first time)

1. Create a profile to manage AWS 

    ``aws configure --profile superhero``

8. Check instances to see if we are connected

    ``aws ec2 describe-instances --profile superhero``

9. Create Route53 reusable delegation set 

    ``aws route53 create-reusable-delegation-set --caller-reference 1224 --profile superhero``

10. BONUS: If you want to manually create hosted zones using the delegate dataset use:

    ``aws route53 create-hosted-zone --name marinabits.de --caller-reference 1224 --delegation-set-id /delegationset/NXO03GZWZVOG9 --profile superhero``

11. If you have a terraform.tfstate file copy it inside the ./terraform folder. This folder will be shared with the docker container.

12. Configure the corresponding .tfvars file 

23. Do a terraform init 

    ``cd terraform``

    ``terraform init``
## EVERY TIME YOU "up" your container

1. Run following commands to add the ssh key to the agent inside the docker container

    ```eval `ssh-agent -s` ```

    ``ssh-add your_key_name``

14. Finally TERRAFORM

    ``cd terraform``
    
    ``terraform apply``

