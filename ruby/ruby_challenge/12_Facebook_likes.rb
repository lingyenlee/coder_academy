# We are all familiar with the facebook likes. Someone posts a photo or makes a post.
#  When the post is first released:- If no one likes it, it says a sad "No one likes this"
#   underneath it
# - If one person likes it - it says "#{name} likes this"
# - If two people like it - it says "#{name} and #{name} like this"
# - If 3 people like it - it says "#{name}, #{name} and #{name} like this"
# - If 4 or more people like it - it says "#{name}, #{name} and #{num} others like this", 
# where the two names are the most recent in the array, and the num is the remaining amount of people
#  Write a method that takes an array of people's names as an argument.
#  The method should loop through these names to tell the user who likes the post, 
#  in the above format. Super important: make sure to get the grammar correct!!
#  E.g. facebook_likes(["Alex"]) should return "Alex likes this"
#  E.g. facebook_likes([]) should return "No one likes this"
#  E.g. facebook_likes(["Alex", "Garret"]) should return "Alex and Garret like this"
#  E.g. facebook_likes(["Alex", "Garret", "Paul", "Aleisha", "Sarah", "Macey"]) 
#  should return "Macey, Sarah and 4 others like this"

def facebook_likes(people)

    num_people = people.length

    case num_people
        when 0
            return "No one likes this"
        when 1
            return "#{people[0]} likes this"
        when 2
            return "#{people[-1]} and #{people[-2]} like this"
        when 3
            return "#{people[-1]}, #{people[-2]} and #{people[-3]} like this"
        else
            return "#{people[-1]}, #{people[-2]} and #{people.length - 2} others like this"
    end


    # people.length == 0 ? (return "No one likes this") : (
  
    #     if people.length == 1
    #         return "#{people[0]} likes this"
    #     elsif people.length == 2
    #         return "#{people[-1]} and #{people[-2]} like this"
    #     elsif people.length == 3
    #         return "#{people[-1]}, #{people[-2]} and #{people[-3]} like this"
    #     else
    #         return "#{people[-1]}, #{people[-2]} and #{people.length - 2} others like this"
    #     end)
  
end

# Test cases
puts facebook_likes(["Alex"]) #should return "Alex likes this"
puts facebook_likes([]) #should return "No one likes this"
puts facebook_likes(["Alex", "Garret"]) #should return "Alex and Garret like this"
puts facebook_likes(["Alex", "Garret", "Paul", "Aleisha", "Sarah", "Macey"]) #  should return "Macey, Sarah and 4 others like this"