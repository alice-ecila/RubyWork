#! /usr/bin/env ruby

class Student
	attr_accessor :name
	attr_accessor :age
	def introduce
		puts "I am #{self.name}"
	end
end

no1 = Student.new
no1.name = 'alice'
no1.age = 12

no2 = Student.new
no2.name = 'ayaya'
no2.age = 14

students = [no1, no2]

students.each do |student|
	puts "#{student.name}: #{student.age}"
	student.introduce
end

exit 0
