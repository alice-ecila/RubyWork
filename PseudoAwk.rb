#! /usr/bin/env ruby

def extract(receiver = STDIN)
	receiver::readlines()::each() { |line|
		fields = line::chomp()::split(ARGV[2])
		puts(fields[ARGV[0]::to_i() - 1])
	}
end

unless ARGV[1] == '-' then
	File::open(ARGV[1], 'r') { |file|
		extract(file)
	}
else
	extract()
end

exit(0)

