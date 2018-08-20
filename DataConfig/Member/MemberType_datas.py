#!usr/bin/python
#encoding:utf-8
import string
import random

new_membertype_name=''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(6))
new_membertype_level='100'
new_membertype_cost='100'
new_membertype_remark='autotest'

edit_membertype_name=''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(6))
edit_membertype_level='99'
edit_membertype_cost='99'
edit_membertype_remark='autotest'