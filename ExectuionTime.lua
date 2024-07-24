--!strict

local ExecutionTime = {}

export type Result = {
	ExecutionTimeFormatted: string,
	ExecutionTimeRaw: number
}

function ExecutionTime.MeasureInMs(func: () -> ()): Result
	local startTime = tick()
	func()
	local endTime = tick()
	local elapsedTime = (endTime - startTime) * 1000
	
	return {
		ExecutionTimeFormatted = string.format("%.2f ms", elapsedTime),
		ExecutionTimeRaw = elapsedTime
	}
end

return ExecutionTime
