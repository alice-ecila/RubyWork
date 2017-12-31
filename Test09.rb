#! /usr/bin/ruby

strings = $stdin.read.split("\n")

strings.each do |i|
    puts i.to_i * 10
end

exit 0
