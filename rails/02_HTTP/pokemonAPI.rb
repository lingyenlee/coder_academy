require "httparty"
require 'tty-prompt'

# response = HTTParty.get("https://pokeapi.co/api/v2/")

# puts response.body


def get_poke()
    prompt = TTY::Prompt.new # use tty-prompt
    poke_name = prompt.ask("Which pokemon are you looking for?")
    puts poke_name
    pokemon = HTTParty.get("https://pokeapi.co/api/v2/pokemon/#{poke_name}/")
    return pokemon.body
end

puts get_poke()