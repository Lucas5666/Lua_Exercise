print('************复杂数据类型***************')
print('************字典***************')
a = {['name'] = 'Cai',['age'] = 18,['1'] = 1}
print(a['name'])
print(a['age'])

print(a.name,a.age,a['1'])

a.name = 'Lucas'
print(a['name'])
a['2'] = 2
print(a['2'])
-- 删除
a['1'] = nil
print('************字典遍历***************')
for i,j in pairs(a) do
print(i..'_'..j)
end

for i,j in pairs(a) do
print(j)
--print(a[i])
end

print('************类和结构体***************')
-- 使用表来模拟类和结构体
Student = {
    -- 成员变量
    age = 18,
    sex = true,
    -- 成员函数
    Up = function()
        -- age需要指定
        print(Student.age)
        print('我长大了')
    end,
    Study = function()
        print('我学习了')  
    end,
    Learn = function(p)
        print(p.sex)
    end
}
-- 把自己当成参数传入函数
Student.Learn(Student)
Student:Learn()
print('************Line***************')

print(Student.age)
Student.Study()
Student.name = 'Cai'
print(Student.name)

Student.Speak = function()
    print('我说话了')
end
Student.Speak()

function Student.Speak2()
    print('我说话了2')
end
Student.Speak2()

Student.Up()
print('************表的公共操作***************')
t1 = {{age = 1,name = 'Cai'},{age = 2,name = 'Lu'}}
t2 = {name = 'Lucas',sex = true}
print(#t1)
-- 插入指定元素
table.insert(t1,t2)
print(#t1)
for i = 1,#t1 do
    k = t1[i]
    for k,j in pairs(k) do
    print(k,j)
    end
end
print('************Line***************')
--移除元素
-- remove 默认移除最后一个元素
table.remove(t1)
print(#t1)
for i = 1,#t1 do
    k = t1[i]
    for k,j in pairs(k) do
    print(k,j)
    end
end
-- remove 移除指定元素
table.remove(t1,1)
print(#t1)
for i = 1,#t1 do
    k = t1[i]
    for k,j in pairs(k) do
    print(k,j)
    end
end
print('************Line***************')
t2 = {2.4,6,2,3,9,1}
table.sort(t2)
for i,j in pairs(t2) do
print(j)
end
print('************Line***************')
table.sort(t2,function(a,b)
if a > b then
    return true
end
end)
for i,j in pairs(t2) do
    print(j)
end
print('************拼接***************')
t3 = {'123','456','789'}
s = table.concat(t3,'_')
for i,j in pairs(t3) do
    print(j)
end
print(s)