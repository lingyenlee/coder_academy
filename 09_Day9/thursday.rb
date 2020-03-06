require_relative "./data"

# 1) Print every country to the screen
# 2) Only print the countries if they are 7 characters
# 3) Only print the countries if they are 6 or 8 characters and they begin with a "U"
# 4) Hash
# We are going to make a hash out of our data. eg map = {"Aus" => "Australia"}
# Write a function to make an abbreviation of each country (first 3 letters + The last letter)
# We will use that abbreviation as the key. The value should be the countries name

for country in COUNTRIES
  p country if (country.length == 6 or country.length == 8) && country[0] == "U"
end



def hash_map(countries)
  ans = {}
  for country in countries
    p abrev = country[0...2].to_s  + country[-1]
    ans[abrev] = country
  end
  
  ans
end


p hash_map(COUNTRIES)


# methods

# hashes

# loops

