# Steps

## On AWS Console

1. Create IAM user as admin and download keys

## On configurators machines

1. Configure profile for aws

    ``aws configure --profile superhero``

2. Check instances to see if we are connected

    ``aws ec2 describe-instances --profile superhero``

3. Create Route53 reusable delegation set

    ``aws route53 create-reusable-delegation-set --caller-reference 1224 --profile superhero``

4. Create hosted zone using that delegation set

    ``aws route53 create-hosted-zone --name marinabits.de --caller-reference 1224 --delegation-set-id /delegationset/NXO03GZWZVOG9 --profile superhero``

5. Configure DNS properly with your registrar

6. Navigate to terraform folder

    ``terraform init``





