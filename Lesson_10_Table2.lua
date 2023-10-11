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


