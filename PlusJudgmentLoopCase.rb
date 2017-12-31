#! /usr/bin/ruby

def isPlus?(num)
	printf("%s%s", __method__, ' => ')
	return 0 < num
end

errorMsg = 'Please Enter Numeric !'
allowPattern = /^[[:space:]]*-?[[:digit:]]+[[:space:]]*$/

while true do
	print 'InputNum> '
	inputNum = $stdin.gets
		case inputNum
			when nil then
				printf("\n")
				break
			when /^[[:space:]]*$/ then
				next
			when allowPattern then
				inputNum = inputNum.to_i
			else
				printf("\e[31m%s\e[0m\n", errorMsg)
				exit 1
		end
	puts isPlus?(inputNum)
end

exit 0
