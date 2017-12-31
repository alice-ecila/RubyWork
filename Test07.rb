#! /usr/bin/ruby

while true do
	print 'Please Enter Num> '
	i = gets.to_i
	if i == 0 then
		puts "Given Zero.\n\e[31mFailed.\e[0m"
		exit 1
	elsif i > 10 then
		puts "Given Over 10.\nNormal Exit."
		break
	elsif i == 5 then
		puts "Given 5.\nContinue."
		next
	end
	puts "* 10 = #{i * 10}"
end

exit 0
