# _*_ CODING:UTF-8 _*_
'''
@authot:马维畅
@time:2018/8/9 20:17
'''

s = ['<0112>','<32>','<1024x768>','<60>','<1>','<100.0>','<500.0>',123,56]

p = ''.join(str(x) for x in s)
print(p)