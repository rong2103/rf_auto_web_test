#!usr/bin/python
#coding:utf-8  
import random

reserv_person_data=u"洋"
reserv_register_name='reserv_member'
#random mobile
prelist=["130","131","132","133","134","135","136","137","138","139","147","150","151","152","153","155","156","157","158","159","186","187","188"]

reserv_mobile_data=random.choice(prelist)+"".join(random.choice("0123456789") for i in range(8))

#team name
team_name_data='teamA'


