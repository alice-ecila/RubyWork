#! /usr/bin/env ruby

# load './ProfileClass.rb'
require './ProfileClass'

member1 = Profile.new(name: 'alice', age: 12)
member2 = Profile.new(name: 'ayaya')

members = [member1, member2]

members.each do |member|
	puts member.introduce()
end

exit 0
