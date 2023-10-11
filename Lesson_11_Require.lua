print('************多脚本执行***************')

print('************全局变量和本地变量***************')
for i = 1,2 do
j = 'xxx'
end
print(j)
for i = 1,2 do
    local k = 'xxx' 
    print('循环里面的'..k)
    end
print(k)
function F1()
    v1 = 'vvvv'
end
print(v1)
F1()
print(v1)
print('************多脚本执行***************')
require('Lesson_11_Test')
print(test1)
print(localtest2)
print('************脚本卸载***************')
require('Lesson_11_Test')
-- 判断脚本是否已经加载
print(package.loaded['Lesson_11_Test'])
-- 卸载脚本
package.loaded['Lesson_11_Test'] = nil
print(package.loaded['Lesson_11_Test'])
s = require('Lesson_11_Test')
print(s)
print('************大G表(总表)***************')
-- 大G表 存储着所有的全局变量
-- 不会存储本地变量（local）
a = 1
for k,v in pairs(_G) do
print(k,v)
end
print(a)


