#!usr/bin/python
#encoding:utf-8
import string
import random

#new rechargerule
add_rechargerule_namedata=''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(6))
add_recharge_coupon_data=''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(6))
add_recharge_amountdata='100'
add_recharge_giftdata='3'
add_startdate_data='2018-06-04'
add_enddate_data='2019-06-04'
#edit rechargerule
edit_recharge_namedata=''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(6))
edit_recharge_amountdata='200'
edit_recharge_giftdata='6'
