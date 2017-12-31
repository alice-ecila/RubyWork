#! /usr/bin/ruby

while true do
    # print '>> '
    i = gets
    if i.nil? then
        exit 0
    elsif i == "\n" then
        next
    elsif i !~ /^\d+$/ then
        printf("\e[31m%s\e[0m\n",
            'Please Enter Num !'
        )
        next
    else
        i = i.to_i
    end
    puts i * 100
end
