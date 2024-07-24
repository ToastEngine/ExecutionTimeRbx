--!strict
local ExecutionTime = require(script.Parent.ExecutionTime)

local function AddFuction(a: number, b: number): number	
	return a+b
end

-- Use an anonymous function to wrap your function call.
local Task1 = ExecutionTime.MeasureInMs(function()
	local n1 = math.random(1, math.pow(9, 9))
	local n2 = math.random(1, math.pow(9, 9))
	local result = AddFuction(n1, n2)
	
	print("Added, "..n1.." + "..n2.." = "..result)
end)
print("AddFunction completed in "..Task1.ExecutionTimeFormatted)

-- Run code directly.
local Task2 = ExecutionTime.MeasureInMs(function()
	for i = 1, 20 do
		print(i)
	end
end)
print("Direct code execution completed in "..Task2.ExecutionTimeFormatted)


