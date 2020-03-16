# Mad Libs

def mad_libs
    blanks = ["verb", "adjective", "adjective", "noun"]
    vowels = ['a', 'e','i', 'o', 'u']

    words = blanks.map do |x|
        article = vowels.include?(x[0]) ? "an" : "a"
        print "Give me #{article} #{x} :"
        response = gets.chomp
    end

    return "I decided to #{words[0]} a #{words[1]} party for my #{words[2]} #{words[3]}."
end

puts mad_libs