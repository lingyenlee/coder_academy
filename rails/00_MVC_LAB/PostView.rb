class PostView
    
    # create a method in PostView to get all the info needed 
    # about a post
    def create
        puts "Please enter a title for the post"
        title = gets.chomp

        puts "Please enter a body for the post"
        body = gets.chomp

        return {"title" => title, "body" => body}
    end

    def index(posts)
        puts "\n"
    
        if (posts.length == 0)
            puts "There is no posts to view \n\n"
        else
            puts "CURRENT POSTS"
    
            posts.each do |post|
                puts "id: #{post["id"]}"
                puts "title: #{post["title"]}"
                puts "body: #{post["body"]}"
                puts "\n\n"
            end
        end
    end

    # retreive id from the user of the post selected
    def selection
        puts "What is the id of the post?"
        id = gets.chomp
        return id
    end

    def show(post)
        puts "\n"
        if (post)
            puts "Title:"
            puts post["title"]
            puts "\n"
            puts "Body:"
            puts post["body"]
            puts "\n"
        else
            puts "Could not find post \n\n"
        end
    end

    def update

        puts "Please update the title"
        title = gets.chomp

        puts "Please update the body"
        body = gets.chomp

        return {"title" => title, "body" => body}

     end

     def show_updated(id)
       puts "Post no #{id} has been updated."
     end

    def show_deleted(id)
       puts "Post no #{id} has been deleted."
    end
end

