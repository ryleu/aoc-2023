#!/usr/bin/env lua

out = 0

string_versions = {
	one = "1",
	two = "2",
	three = "3",
	four = "4",
	five = "5",
	six = "6",
	seven = "7",
	eight = "8",
	nine = "9"
}

function string_fixer(str)
	local out = str
	for k, v in pairs(string_versions) do
		out = out:gsub(k, k .. v .. k)
	end
	return out
end

for line in io.lines("input_1") do
	local fixed = string_fixer(line)

	-- read from start
	for i = 1, #fixed do
		local num = tonumber(fixed:sub(i, i))
		if num ~= nil then
			out = out + 10 * num
			break
		end
	end

	-- read from end
	for i = #fixed, 1, -1 do
		local num = tonumber(fixed:sub(i, i))
		if num ~= nil then
			out = out + 1 * num
			break
		end
	end
end

-- print out
print(out)
