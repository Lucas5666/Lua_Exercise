print('************面向对象***************')

print('************封装***************')
Object = {}
Object.id = 1
function Object:Test()
    print(self.id)
end
function Object:new()
    -- self 代表Object 
    self.__index = self
    local obj = {}
    setmetatable(obj,self)
    return obj
end

local myObj = Object:new()
print(myObj)
print(myObj.id)
myObj:Test()
print('************继承***************')
function Object:subClass(className)
    _G[className] = {}
    local obj = _G[className]
    self.__index = self
    obj.base = self
    setmetatable(obj,self)
end
Object:subClass('person')
print(_G)
for k,v in pairs(_G) do
    print(k,v)
end
print(person)
p = {}
print(p)
print(person.id)

p1 = person:new()
print(p1.id)
Object:subClass('Monster')
m1 = Monster:new()
print(m1.id)
print('************多态***************')
-- 相同行为 不同表现
-- 相同方法 不同执行

Object:subClass('GameObject')
GameObject.posX = 1
GameObject.posY = 2
function GameObject:Move()
    self.posX = self.posX + 1
    self.posY = self.posY + 1
    print(self.posX,self.posY)
end
GameObject:subClass('Char')
function Char:Move()
    -- 调用父类 传入自己 否侧可能出现多个子类重复修改父类
    self.base.Move(self)
end
local c1 = Char:new()
c1:Move()
local c2 = Char:new()
c2:Move()
local c3 = Char:new()
c3:Move()