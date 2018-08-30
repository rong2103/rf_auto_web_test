#!usr/bin/python
#encoding:utf-8
import random
import string
import sys
import os
cur_dir = os.path.split(os.path.abspath(__file__))[0]
des_dir=cur_dir.replace("DataConfig\Order","PublicUitl")
sys.path.append(des_dir)
# print sys.path
import PublicMethod

remark='auto_test'
#修改订单-电话号码
modify_mobile_data=PublicMethod.TelCreator()
#修改订单——姓名
modify_person_data=PublicMethod.strname()
#修改外部订单号
outer_order_number=PublicMethod.Randint()
#改价
change_price_data=PublicMethod.Uniform()
#添加同来宾客
tonglai_name=PublicMethod.strname()
tonglai_idno=PublicMethod.idcard_generator()

title=PublicMethod.strname()
money=PublicMethod.Uniform()
no='324234324324324'

#修改客人信息
modicust_name=PublicMethod.strname()
modicust_tel=PublicMethod.TelCreator()

#联房和团队添加入住人
checkin_name1=PublicMethod.strname()
checkin_idno1=PublicMethod.idcard_generator()
checkin_name2=PublicMethod.strname()
checkin_idno2=PublicMethod.idcard_generator()







