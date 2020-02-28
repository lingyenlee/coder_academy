km_driven = 2000
km_service_limit = 5000

if km_driven >= km_service_limit
    puts "Car has reached #{km_driven} and needs service."
else 
    puts "Car not yet reached limit!"
end