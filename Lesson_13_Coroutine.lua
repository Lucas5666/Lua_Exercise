print('************协同程序***************')

print('************协同程序创建***************')
-- coroutine.create()
function F1()
    print('F1')
end

co = coroutine.create(F1)
print(type(co))
print(co)
-- coroutine.wrap
co2 = coroutine.wrap(F1)
print(type(co2))
print(co2)
print('************协同程序运行***************')
coroutine.resume(co)
co2()
print('************协同程序挂起***************')
F2 = function()
    local i = 1
    while true do
        print(i)
        i = i + 1
        print(coroutine.status(co3)) -- running 运行中 
        coroutine.yield(i)
    end
end
co3 = coroutine.create(F2)
coroutine.resume(co3)
coroutine.resume(co3)
for i = 1,9 do
    isOk,temp = coroutine.resume(co3)
    print(isOk,temp)
end
print('************协同程序状态***************')
-- coroutine.status
print(coroutine.status(co3))-- suspended 暂停状态
print(coroutine.status(co)) -- dead 结束状态

print(coroutine.running(co3))