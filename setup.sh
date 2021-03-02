mkdir /home/mal
cd /home/mal
wget "https://github.com/malVPN/App/raw/main/server.py"
yum install -y python3
python3 server.py &> /dev/null &