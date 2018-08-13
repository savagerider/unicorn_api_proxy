#!/bin/bash
cd /home/ec2-user
pip install -r requirements.txt
killall python
nohup python app.py &>/dev/null &
