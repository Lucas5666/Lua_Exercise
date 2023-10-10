print('************函数***************')
--第一种方式
--function functionName()
--end
--第二种方式
--a = function()
--end
print('************无参数无返回值函数***************')
-- 先声明 才可以调用
-- F1()
function F1()
    print('F1')
end
F1()

F2 = function()
    print('F2')
end
F2()
print('************有参数函数***************')
function F3(a)
    print(a)
end

F3('ad')
F3(1,2,4)
print('************有返回值函数***************')
function F4(a)
    return a,123,true
end
-- 多返回值声明多个变量来接收返回值
temp,temp2,temp3= F4('456')
print(temp,temp2,temp3)
print('************函数的类型***************')
-- 函数的类型就是function
F5 = function()
    print('F5')
end
print(type(F5))
print('************函数的重载**************')
F6 = function()
    print('F6')
end
function F6(a)
    print(a)
end
F6('123')
-- 不支持重载 会默认调用最后声明的函数
print('************变长参数**************')
function F7(...)
    a = {...}
    for i = 1,#a do
    print(a[i])
    end
end

F7(1,2,'ddd',true,nil)
print('************函数嵌套**************')
function F9()
    function F8()
        print('F9里面的F8')
    end
    return F8
end

function F10()
    return function ()
        print('F10里面的函数')
    end
    
end

f8 = F9()
f8()
f10 = F10()
f10()

function F11(a)
    -- 闭包 改变了传入参数的生命周期
    return function (b)
        return a + b
    end
end

f12 = F11(3)

print(f12(4))


