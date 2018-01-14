#! /usr/bin/env ruby

ErrMsg = <<~'EOS'
	Only numeric input is allowed.
EOS

while true do
	begin
		print('Input> ')
		score = STDIN::gets()
		break if score == nil
		score::chomp!()
		unless %r(\d+) =~ score then
			raise(Exception::new(TypeError::new(ErrMsg)))
		end
		rescue
			p($!)
			p($!::message())
			p($@)
			retry
	end
	score = score::to_i()
	if score > 90 then
		puts('Over 90')
	elsif score > 70 then
		puts('Over 70')
	else
		puts('NG')
	end
end

exit(0)

