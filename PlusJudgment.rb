#! /usr/bin/ruby

def isPlus?(num)
	printf("%s%s", __method__, ' => ')
	return 0 < num
end

while true do
	print 'InputNum> '
	inputNum = $stdin.readline.to_i
	puts isPlus?(inputNum)
end

# exit 0
