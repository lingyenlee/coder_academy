require "httparty"

response = HTTParty.get("https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol")

puts response.body