#!/usr/bin/ruby

while true do
    score = gets.to_i
    if score > 50 then
        puts 'Over 50'
    elsif score > 30 then
        puts 'Over 30'
    else
        puts 'NG'
    end
end
