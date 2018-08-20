#!usr/bin/python
#encoding:utf-8
import random
import string

checkin_person_data=''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(6))
#random mobile
prelist=["130","131","132","133","134","135","136","137","138","139","147","150","151","152","153","155","156","157","158","159","186","187","188"]

checkin_mobile_data=random.choice(prelist)+"".join(random.choice("0123456789") for i in range(8))
checkin_idNo_data='430721198803041234'
#team name
team_name_data=''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(6))