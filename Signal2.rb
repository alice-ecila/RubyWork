#! /usr/bin/env ruby

while true do
	signal = $stdin::gets()::chomp()
	case signal
		when *%w(green blue) then
			printf("\e[32m%s\e[0m\n",
				'Go!'
			)
		when 'yellow' then
			printf("\e[33m%s\e[0m\n",
				'Caution!'
			)
		when 'red' then
			printf("\e[31m%s\e[0m\n",
				'Stop!'
			)
		when *%w(exit quit) then
			break()
		else
			printf("\e[31;1m%s\e[0m\n",
				'Wrong signal !!!'
			)
	end
end

exit(0)

