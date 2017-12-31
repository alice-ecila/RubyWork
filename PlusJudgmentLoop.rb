#! /usr/bin/ruby

def isPlus?(num)
    printf("%s%s", __method__, ' => ')
    return 0 < num
end

errorMsg = 'Please Enter Numeric !'
allowPattern = /^[[:space:]]*-?[[:digit:]]+[[:space:]]*$/

while true do
    print 'InputNum> '
    inputNum = $stdin.gets
        if inputNum.nil? then
            printf("\n")
            break
        elsif /^[[:space:]]*$/ === inputNum then
            next
        elsif ! (allowPattern === inputNum) then
            printf("\e[31m%s\e[0m\n", errorMsg)
            exit 1
        else
            inputNum = inputNum.to_i
        end
    puts isPlus?(inputNum)
end

exit 0
