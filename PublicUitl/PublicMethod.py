#!usr/bin/python
# coding:utf-8
import random
import RandomCharacters


# 产生 1 到 9999 的一个整数型随机数
def Randint():
    return random.randint(1, 9999)


# 产生  0.1 到 99 之间的随机浮点数
def Uniform():
    uniForm = random.uniform(0.1, 9999)
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
