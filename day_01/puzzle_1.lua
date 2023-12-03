#!/usr/bin/env lua

out = 0

for line in io.lines("input_1") do
	-- read from start
	for i = 1, #line do
		local num = tonumber(line:sub(i,i))
		if num ~= nil then
			out = out + 10 * num
			break
		end
	end

	-- read from end
	for i = #line, 1, -1 do
		local num = tonumber(line:sub(i,i))
		if num ~= nil then
			out = out + 1 * num
			break
		end
	end
end

-- print out
print(out)
