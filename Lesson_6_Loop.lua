print('************循环语句***************')
print('************while***************')
n = 0

while n < 5 do
    print(n)
    n = n + 1
end

print('************ repeat until (do while)***************')
n = 0
repeat
    print(n)
    n = n + 1
until n == 6
print('************ For循环***************')
-- 初始值 目标值 增量/减量
for i = 1,5,2 do
    print(i)
end
