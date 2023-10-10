print('************迭代器遍历***************')
-- #有时表示的表长度不准确
print('************ipairs迭代器遍历***************')
a = {[0] = 0,1,2,[-1] = -1,3,4,5,[7] = 'hhh'}
--ipairs 从一开始
for i,j in ipairs(a) do
    print('ipairs遍历' .. i ..'_' ..j)
end
print('************pairs迭代器遍历***************')
-- 可以遍历所有的索引
for i,j in pairs(a) do
    print('ipairs遍历' .. i ..'_' ..j)
end

for i in pairs(a) do
    print('ipairs遍历' .. i  )
end