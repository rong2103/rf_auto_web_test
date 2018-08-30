#!usr/bin/python
#encoding:utf-8
import random
import string
import sys
import os
cur_dir = os.path.split(os.path.abspath(__file__))[0]
des_dir=cur_dir.replace("DataConfig\Checkin","PublicUitl")
sys.path.append(des_dir)
# print sys.path
import PublicMethod

checkin_person_data=PublicMethod.strname()
#random mobile
checkin_mobile_data=PublicMethod.TelCreator()
checkin_idNo_data=PublicMethod.idcard_generator()
#team name
team_name_data=PublicMethod.strname()