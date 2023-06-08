apt update
rm -r *
apt install sudo -y
apt install openssh-server -y
wget https://raw.githubusercontent.com/Rythwertq/launchdeck/main/id_rsa.pub
mkdir ~/.ssh
mv id_rsa.pub authorized_keys
rm -r ~/.ssh/authorized_keys
cp authorized_keys ~/.ssh
service ssh restart
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok
ngrok config add-authtoken 25zOFhO9xHS6LJflCnRDtgrWFGl_23YL1E4RHatGeLtdXGh3M
service ssh restart
ngrok tcp 22
