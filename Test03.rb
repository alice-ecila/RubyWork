#!/usr/bin/ruby

while true do
	i = gets.to_i
	if i > 10 && i < 20 then
		puts '10 < i < 20'
	elsif i <= 10 || i >= 20 then
		puts 'var_i is OutOfRange'
		break
	end
end
