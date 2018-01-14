#! /usr/bin/env ruby

def copy(from, to)
	begin
		src = File::open(from, 'r')
		dst = File::open(to, 'w')
		data = src::read()
		dst::write(data)
	rescue => err
		p(err)
		p(err::message())
		p(err::backtrace())
	ensure
		src::close()
		dst::close()
	end
end

copy(ARGV[0], ARGV[1])

exit(0)

