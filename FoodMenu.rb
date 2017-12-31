#! /usr/bin/env ruby

load './FoodClass.rb'

menus = []
menus[0] = Food.new(name: 'Sushi', price: 500, calorie: 200)
menus[1] = Food.new(name: 'Juice', price: 100, calorie: 100)
menus[2] = Food.new(name: 'Curry', price: 300, calorie: 400)
menus[3] = Food.new(name: 'Pizza', price: 1000, calorie: 700)

totalPrice = 0
totalCal = 0

system('clear')

loop do
    menus.length.times do |i|
        info = "#{i}. #{menus[i].printInfo()}"
        printf("\n\e[34m%s\e[0m", info)
    end
    print("\n\n", 'Please select menu> ')
    choice = $stdin.readline().to_i()
    printf("\n%s\e[32m%s\e[0m\n",
        'You selected => ',
        menus[choice].name
    )
    msg = <<-'EOS'
        Please enter the number to buy.
        If you buy 3 or more items
        you will get discounted of 100 yen.
        Also, on Sundays
        all items will be 10% off.
    EOS
    printf("\n\e[34m%s\e[0m\n%s", msg, 'Count> ')
    count = $stdin.readline().to_i()
    totalPrice += menus[choice].getTotalPrice(count)
    totalCal += menus[choice].getTotalCalorie(count)
    system('clear')
    printf("\n%s: \e[32m%s\e[0m\n\n",
        'TotalPrice',
        "#{totalPrice} yen"
    )
    printf("%s: \e[32m%s\e[0m\n\n",
        'TotalCalorie',
        "#{totalCal} Kcal"
    )
    printf("%s\e[33m%s\e[0m%s",
        'Continue?(', 'y', '/n)> '
    )
    reply = $stdin.readline().chomp()
    break if /^[[:space:]]*n/i === reply
end

exit(0)
