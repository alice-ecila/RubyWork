#! /usr/bin/env ruby

class FoodMenu
    attr_accessor :name
    attr_accessor :price
    def initialize(name:, price:)
        self.name = name
        self.price = price
    end
    def printInfo()
        sprintf("%s: %s",
            self.name,
            self.price
        )
    end
    def getTotalPrice(count)
        totalPrice = self.price * count
        if 3 <= count then
            totalPrice -= 100
        end
        if Food.is_discount_day?() then
            totalPrice *= 0.9
            totalPrice = totalPrice.to_int()
        end
        return totalPrice
    end
end
