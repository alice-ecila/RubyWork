#! /usr/bin/env ruby

require 'date'
load './FoodMenuClass.rb'

class Food < FoodMenu
	attr_accessor(:calorie)
	def self.is_discount_day?()
		today = Date.today()
		return(today.sunday?())
	end
	def initialize(name:, price:, calorie:)
		super(name: name, price: price)
		self.calorie = calorie
	end
	def printInfo()
		info = sprintf("%s: %s (%s)\n",
			self.name,
			"#{self.price} yen",
			"#{self.calorie}Kcal"
		)
		return(info)
	end
	def getTotalCalorie(count)
		totalCal = self.calorie * count
		return(totalCal)
	end
end
