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
a['1'] = nil
print('************字典遍历***************')
for i,j in pairs(a) do
print(i..'_'..j)
end


