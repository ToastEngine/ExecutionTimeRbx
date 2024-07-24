                          
 
# ExcutionTimeRbx

[![GitHub release (latest by date including pre-releases)](https://img.shields.io/github/v/release/navendu-pottekkat/awesome-readme?include_prereleases)](https://img.shields.io/github/v/release/navendu-pottekkat/awesome-readme?include_prereleases)
[![GitHub](https://img.shields.io/github/license/navendu-pottekkat/awesome-readme)](https://img.shields.io/github/license/navendu-pottekkat/awesome-readme)

A simple module to calculate the run time of a function, written in luau.
 
# Usage

```lua
local ExcutionTime = require(path.to.ExecutionTime)

local function AddFuction(a: number, b: number): number	
	return a+b
end

-- Use an anonymous function to wrap your function call --
local Task1 = ExecutionTime.MeasureInMs(function()
	local n1 = math.random(1, math.pow(9, 9))
	local n2 = math.random(1, math.pow(9, 9))
	local result = AddFuction(n1, n2)
	
	print("Added, "..n1.." + "..n2.." = "..result)
end)
print("AddFunction completed in "..Task1.ExecutionTimeFormatted)

-- Run code directly --
local Task2 = ExecutionTime.MeasureInMs(function()
	for i = 1, 20 do
		print(i)
	end
end)
print("Direct code execution completed in "..Task2.ExecutionTimeFormatted)
```

# Types

## Result
```lua
export type Result = {
	ExecutionTimeFormatted: string,
	ExecutionTimeRaw: number
}
```

# Functions

## MeasureInMs(func: ()->()):Result
Excutes function and records how long it takes to execute, returns Result.

```lua
local ExcutionTime = require(path.to.ExecutionTime)

local Task = ExecutionTime.MeasureInMs(function()
	for i = 1, 20 do
		print(i)
	end
end)
print("Direct code execution completed in "..Task.ExecutionTimeFormatted)
```

# License


[MIT license](./LICENSE)


