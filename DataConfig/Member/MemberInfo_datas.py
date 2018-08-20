#!usr/bin/python
# coding:utf-8
import string
import random

#random card no
card_no_data = str(random.randint(0, 999999999999999))

#random mobile
prelist=["130","131","132","133","134","135","136","137","138","139","147","150","151","152","153","155","156","157","158","159","186","187","188"]
member_mobile_data=random.choice(prelist)+"".join(random.choice("0123456789") for i in range(8))

#new member
new_member_idno='430721198904052106'
new_member_name=''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(6))

#edit
edit_member_name_data=''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(6))
edit_member_phone_data='15976476522'
edit_member_idno_data='430721198802056978'

#change card
changecard_cardno=str(random.randint(0, 999999999999999))
changecard_remrk ='auto_test'

#modify pwd
#forget pwd
new_pwd_data = '1'
new_pwd_data2='2'

#loss card
#no fee
new_cardno_data1=str(random.randint(0, 999999999999999))
#cost score
new_cardno_data2=str(random.randint(0, 999999999999999))
loss_score_fee='2'
#cost cash
new_cardno_data3=str(random.randint(0, 999999999999999))
loss_cash_fee='5'
remark_data='auto_test'

#increase score
add_score_num_data='100'
decrease_score_num_data='5'

#recharge-list
recharge_money_data='100'

#recharge-modify
recharge_money_data2='50'

#logoff member
member_name_data_off=''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(6))
card_no_data_off = str(random.randint(0, 999999999999999))
member_mobile_data_off=random.choice(prelist)+"".join(random.choice("0123456789") for i in range(8))
