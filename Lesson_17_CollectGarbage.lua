print('************垃圾回收***************')
t = {age = 18 ,name = hh}
-- 获取当前lua的占用内存数 单位K字节
t = nil
 print(collectgarbage('count'))
 collectgarbage('collect')
 print(collectgarbage('count'))
-- lua中有自动GC 