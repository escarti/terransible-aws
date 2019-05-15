# HOW TO


1. generate ssh key 

    ``shh-keygen``

2. user terransible.env to create your .env file and fill the variables with your values

    ``cp terransible.env .env``

3. Build container

    ``docker-compose build``

4. Run container

    ``docker-compose up``

5. Run following commands to add the ssh key to the agent inside the docker container

    ``ssh-agent sh``

    ``ssh-add your_key_name``