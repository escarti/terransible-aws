FROM python:2.7.16-alpine

ARG terraform_version
ARG ssh_key_file_name

ENV SSH_KEY_NAME ${ssh_key_file_name}

RUN mkdir /workspace/
COPY entrypoint.sh /workspace/
COPY ssh_key/${ssh_key_file_name} /workspace/ssh_key

RUN mkdir /bin/terraform

RUN wget -O terraform.zip "https://releases.hashicorp.com/terraform/${terraform_version}/terraform_${terraform_version}_linux_arm.zip" && \
    unzip terraform.zip -d /bin/terraform && \   
    rm terraform.zip && \
    pip install awscli --upgrade

RUN apk add ansible && apk add openssh

ENV PATH "$PATH:/bin/terraform"

# run entrypoint.sh
# ENTRYPOINT ["/workspace/entrypoint.sh"]