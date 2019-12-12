
BLE = {X=0, Y=0, Z=0}

--BLE.__index = BLE

function BLE:new()
    o = {}
    setmetatable(o, self)
    self.__index = self
    return o
end

function BLE:setX(value) 
    self.X = value
end

function BLE:getX()
    return self.X
end

function BLE:withdraw(value)
    self.X = self.X - value
end

handle = BLE:new()
print("Before set value")
print(handle:getX())

print("After set value")
handle:setX(10)
print(handle:getX())

print("After withdraw 5")
handle.withdraw(handle,5)
print(handle:getX())

