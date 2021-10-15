sudo zypper -n in git
sudo zypper -n in go
sudo zypper -n in docker
sudo systemctl start docker
sudo systemctl enable docker
#sudo systemctl status docker
sudo gpasswd -a "${USER}" docker
docker pull opensuse/leap:latest
docker images | grep opensuse
docker build . -t opensuse/leap:latest -m 256mb --no-cache=true
docker build -t opensuse/hardened-v1.0 . --no-cache=true