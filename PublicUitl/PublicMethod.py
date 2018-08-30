#!usr/bin/python
# coding:utf-8
import string
import random
import RandomCharacters
import time

# 产生 1 到 9999 的一个整数型随机数
def Randint():
    return random.randint(1, 9999)


# 产生  0.1 到 99 之间的随机浮点数
def Uniform():
    uniForm = random.uniform(0.1, 99)
    return round(uniForm, 2)


# 从序列中随机选取一个元素
def Choice(list):
    return random.sample(list, 1)


# 从序列中随机产生3个中文字符
def SampleChina():
    res = list(RandomCharacters.resCharacters())
    ucc = random.sample(res, 5)
    str1 = str(ucc).replace('u\'', '\'')
    return str1.decode("string-escape")

# 生成随机电话号码
def TelCreator():
    prelist=["130","131","132","133","134","135","136","137","138","139","147","150","151","152","153","155","156","157","158","159","186","187","188"]
    return  random.choice(prelist)+"".join(random.choice("0123456789") for i in range(8))

# 生成6位随机英文和符号
def strname():
    return  ''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(6))

# 生成随机身份证号码
def idcard_generator():
    """ 随机生成新的18为身份证号码 """
    ARR = (7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2)
    LAST = ('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2')
    t = time.localtime()[0]
    x = '%02d%02d%02d%04d%02d%02d%03d' % (random.randint(10, 99), random.randint(1, 99), random.randint(1, 99), random.randint(t - 80, t - 18), random.randint(1, 12), random.randint(1, 28), random.randint(1, 999))
    y = 0
    for i in range(17):
        y += int(x[i]) * ARR[i]
    IDCard = '%s%s' % (x, LAST[y % 11])
    # birthday = '%s-%s-%s 00:00:00' % (IDCard[6:14][0:4], IDCard[6:14][4: 6], IDCard[6:14][6:8])
    return IDCard

