#! /usr/bin/env ruby

pattern = Regexp.new(ARGV[0])
filename = ARGV[1]

file = File.open(filename)

file.each_line do |line|
	if pattern =~ line then
		print(line)
	end
end

exit(0)
