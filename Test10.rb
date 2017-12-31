#! /usr/bin/ruby

numbers = $stdin.readlines

numbers.each do |number|
    number = number.to_i
    # puts number + 10
    case number
        when 1..9 then
            puts '1..9'
        when 11..19 then
            puts '11..19'
        else
            puts 'Other!'
    end
end

exit 0
