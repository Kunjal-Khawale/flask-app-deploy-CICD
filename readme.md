first do all things in vrtual env by using command -  source venv/bin/activate

start both the prod server and flask-runner server on AWS

ensure ssh key file should have permission as -  chmod 400 prod-server-keys.pem

connect prod server connect through ssh with local (optional)

ensure local is connected with github for that do git remote show origin

ensure that github should have prod server private key, user_name as ubuntu, host as public ip address to connect with prod server

to run the app go to github action and run th workflow

