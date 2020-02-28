price = 40
tasty = true
price_betw_30_50_tasty = 
# if price > 30
#     if price < 50 && tasty
#         puts "Eat the meal!"      
#     else
#         puts "It's too expensive"
#     end
# else
#     puts "Eat the meal!"
# end

# if (price.between?(30,50) && tasty) || price < 30
#     puts "Eat the meal!"
# else
#     puts "It's too expensive!"
# end

((price < 30) || (price.between?(30,50) && tasty)) ? (puts "Eat the meal!") : (puts "It's too expensive!")

does_significant_work = false
makes_breakthrough = true

if (does_significant_work && makes_breakthrough)
	puts "You are nobel prize winner"
else
	puts "You are not nobel prize winner"
end