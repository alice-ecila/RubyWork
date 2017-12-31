#! /usr/bin/env ruby

class Menu
	attr_accessor :name, :price
	def getTotalPrice(count)
		totalPrice = self.price * count
		if 5 <= count then
			printf("\e[32m%s\e[0m\n",
			 	'Product is discounted!'
			)
			totalPrice -= 50
		end
		return totalPrice
	end
end

product = Menu.new
product.name = 'Rice'
product.price = 150

numPat = /^[[:space:]]*[[:digit:]]+[[:space:]]*$/
errMsg = 'Illegal Input !!!'

loop do
	puts "#{product.name}: #{product.price}"
	print "Buy => #{product.name} * "
	reply = $stdin.readline
	if numPat === reply then
		reply = reply.to_i
	else
		printf("\e[31m%s\e[0m\n", errMsg)
		exit 1
	end
	totalPrice = product.getTotalPrice(reply)
	puts "Total: #{totalPrice}"
	printf("%s\e[33m%s\e[0m%s",
		'Continue?(',
		'y',
		'/n)>'
	)
	reply = $stdin.readline.chomp
	break if 'n' === reply
end

exit 0
