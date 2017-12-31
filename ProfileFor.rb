#! /usr/bin/env ruby

# load './ProfileClass.rb'
require './ProfileClass'

members = []

members[0] = Profile.new(name: 'alice', age: 12)
members[1] = Profile.new(name: 'ayaya')
members[2] = Profile.new(name: 'yoko', age: 17) 
members[3] = Profile.new(name: 'shino')
members[4] = Profile.new(name: 'karen', age: 13)
members[5] = Profile.new(name: 'maika')
members[6] = Profile.new(name: 'kaho', age: 17)
members[7] = Profile.new(name: 'mafuyu', age: 20)
members[8] = Profile.new(name: 'miu', age: 22)
members[9] = Profile.new(name: 'hideri')
members[10] = Profile.new(name: 'neri', age: 10)

count = members.length
numOfDigits = (count - 1).to_s.length
format = "%0#{numOfDigits}d: %s\n"

count.times do |i|
    printf(format,
        i,
        members[i].introduce()
    )
end

exit 0
