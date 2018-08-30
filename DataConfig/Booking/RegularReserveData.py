#!usr/bin/python
#coding:utf-8  
import random
import string
import sys
import os
cur_dir = os.path.split(os.path.abspath(__file__))[0]
des_dir=cur_dir.replace("DataConfig\Booking","PublicUitl")
sys.path.append(des_dir)
# print sys.path
import PublicMethod

remark='auto_test'
#预订数据
reserv_person_data=PublicMethod.strname()
reserv_register_name=PublicMethod.strname()
#random mobile
reserv_mobile_data=PublicMethod.TelCreator()

#team name
team_name_data=PublicMethod.strname()

#修改预订单

modify_mobile_data=PublicMethod.TelCreator()
modify_person_data=PublicMethod.strname()