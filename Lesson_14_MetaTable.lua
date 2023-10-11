print('************元表***************')

print('************元表概念***************')
meta = {}
myTable = {}
setmetatable(myTable,meta)
print('************元表__tostring***************')
meta2 = {
    -- 但子表需要当成字符串使用时 会默认调用元表的__tostring方法
    __tostring = function ()
        return 'Cai'
    end
}
myTable2 = {}
setmetatable(myTable2,meta2)
print(myTable2)
print('************元表__call***************')
meta3 = {
    -- 但子表需要当成字符串使用时 会默认调用元表的__tostring方法
    __tostring = function ()
        return 'Cai'
    end,
    -- 但子表被当作函数使用时 会默认调用__call方法
    __call = function()
        print('call')
    end
}
myTable3 = {}
setmetatable(myTable3,meta3)
myTable3()
print('************运算符重载***************')
meta4 = {
    -- 但子表用加法时 会调用这个方法
    __add = function()
        return '加'
    end,
        -- 但子表用减法时 会调用这个方法
    __sub = function()
        return '减'
    end,
    __mul = function()
        return '乘'
    end,
    __div = function()
        return '除'
    end
    -- __mod取余 __eq相等 __pow幂运算 __lt小于 __le小于等于 __concat拼接
    -- 条件运算符 需要2个表有共同的元表
}
myTable4 = {}
myTable5 = {}
setmetatable(myTable4,meta4)
print(myTable4 + myTable5)
print(myTable4 - myTable5)
print('************__index和__newIndex***************')
meta66 = {age = 20}
meta66.__index = meta66

meta6 = {
    --age = 18
}
setmetatable(meta6,meta66)
--meta6.__index = meta6
meta6.__index = meta6
myTable6 = {}
-- 但子表中没有属性时 会在元表中__index中指定的表中查找
setmetatable(myTable6,meta6)
print(myTable6.age)
print(rawget(myTable6,'age'))
-- 但赋值一个不存在的索引时 会把这个赋值到__newindex所指定的表中
--得到元表
print(getmetatable(myTable6))
print(meta6)