print('************特殊用法***************')

print('************多变量赋值***************')
a,b,c = 1,2,'3'
print(a)
print(b)
print(c)

a,b,c = 1,2
print(a)
print(b)
print(c)
-- 赋值多了 自动舍弃
a,b,c = 1,2,3,4,5
print(a)
print(b)
print(c)

print('************多返回值***************')
function F1()
    return 1,2,3,4
end
a,b,c = F1()
print(a)
print(b)
print(c)
print('************ and or ***************')
-- 可以连接任何东西
-- nil false 都认为是假
print(1 and 2)
print(nil and 2)
print(1 or 2)
print(true or 3)
print(false or 4)
-- 模拟三目运算
-- 短路原理
x = 1
y = 2

local res = (x > y) and x or y
print(res)

