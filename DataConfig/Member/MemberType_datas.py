#!usr/bin/python
#encoding:utf-8
import random
import string
import sys
import os
cur_dir = os.path.split(os.path.abspath(__file__))[0]
des_dir=cur_dir.replace("DataConfig\Member","PublicUitl")
sys.path.append(des_dir)
# print sys.path
import PublicMethod

remark='autotest'
new_membertype_name=PublicMethod.strname()
new_membertype_level=random.randint(99, 9999)
new_membertype_cost=PublicMethod.Randint()

edit_membertype_name=PublicMethod.strname()
edit_membertype_level=random.randint(99, 9999)
edit_membertype_cost=PublicMethod.Randint()