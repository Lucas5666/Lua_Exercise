print('**********字符串**********')
a = 'hducbcjh汉子'
print(#a)

print('**********多行打印************')
print('123\t123')

s = [[
    你好
    世界
    ！！
]]

print(s)

print('**********字符串拼接************')
print('123'..'456')

s1 = '789'
s2 = '666'
print(s1 .. s1)

print(string.format('你好，世界。这是我的第%d个程序',1))
--  %d 与数字拼接
--  %a 与任何拼接
--  %s 与字符拼接

print('**********其它类型转字符串************')

-- tototring

print('**********字符串公方法************')
s = 'abcdefg'
print(string.upper(s))
print(s)
print(string.lower(s))
--翻转字符串
print(string.reverse(s))
print(string.find(s,'cde'))
-- 截取字符串
print(string.sub(s,2,3))
-- 重复字符串
print(string.rep(s,3))
-- 替换字符
print(string.gsub(s,'ab','**'))
-- 字符转 ascall
print(string.byte(0))
-- ascall转字符
print(string.char(49))