#! /usr/bin/ruby

i = $stdin.gets.to_i

unless 5 < i then
    puts 'i -le 5'
else
    puts 'i -gt 5'
end

exit 0
