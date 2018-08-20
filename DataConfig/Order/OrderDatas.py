#!usr/bin/python
#encoding:utf-8
import random
import string

remark='auto_test'
#random mobile
prelist=["130","131","132","133","134","135","136","137","138","139","147","150","151","152","153","155","156","157","158","159","186","187","188"]
modify_mobile_data=random.choice(prelist)+"".join(random.choice("0123456789") for i in range(8))

modify_person_data=''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(6))

outer_order_number=str(random.randint(000000000000, 999999999999))

change_price_data=str(random.randint(10, 99))

#同来宾客
tonglai_name=''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(6))
tonglai_idno='430721198904052106'
