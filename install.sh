mkdir /home/centos/src/scripts/
curl https://s3.amazonaws.com/aws-fpga-developer-ami/1.5.0/Scripts/setup_gui.sh -o /home/centos/src/scripts/setup_gui.sh
cd src/scripts/
chmod 700 setup_gui.sh
./setup_gui.sh
