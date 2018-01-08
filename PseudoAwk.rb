#! /usr/bin/env ruby

=begin
p(ARGV)
gets()
=end

File::open(ARGV[0]) { |file|
	file::readlines()::each() { |line|
		fields = line::chomp()::split(':')
		puts(fields[ARGV[1]::to_i() - 1])
	}
}

exit(0)

