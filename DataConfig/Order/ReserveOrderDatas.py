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

remark="auto_test"
#修改房价
new_room_price=PublicMethod.Uniform()

#批量入住
batchin_idno_data=PublicMethod.idcard_generator()