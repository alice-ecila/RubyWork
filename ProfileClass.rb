#! /usr/bin/env ruby

class Profile
    attr_accessor :name
    attr_accessor :age
    def initialize(name:, age: 16)
        self.name = name
        self.age = age
    end
    def introduce()
        info = "#{self.name}: #{self.age}"
        return info
    end
end
