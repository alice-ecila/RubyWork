#! /usr/bin/env ruby

begin
	file = File::open(ARGV[0], 'r')
	print(file::read())
rescue
	p($!)
	p($!::message())
	p($!::backtrace())
	sleep(30)
	retry
ensure
	file::close()
end

exit(0)

