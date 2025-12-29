echo "Install Task -----------------------------------"

curl -1sLf 'https://dl.cloudsmith.io/public/task/task/setup.deb.sh' | sudo -E bash
sudo apt install task

echo "Install Done -------------------------------------"
