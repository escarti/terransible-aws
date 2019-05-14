# Steps

## On AWS Console

1. Create IAM user as admin and download keys

## On configurators machines

aws configure --profile superhero
aws ec2 describe-instances --profile superhero
aws route53 create-reusable-delegation-set --caller-reference 1224 --profile superhero
aws route53 create-hosted-zone --name marinabits.de --caller-reference 1224 --delegation-set-id /delegationset/NXO03GZWZVOG9 --profile superhero
