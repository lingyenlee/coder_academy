class PostModel

    # create instance variables
    def initialize
        @posts = []
        @current_id = 0
    end

    # save the posts 
    def create(post)
        @current_id += 1
        post["id"] = @current_id
        @posts.push(post)
        return post
    end

    def all
        return @posts
    end

    def find(id)
        post = @posts.find do |post|
            post["id"] == id
        return post
        end
    end

    def delete(id)
        for post in @posts
            if post["id"] == id
                @posts.delete(post)
            end
        end
    end


    def edit_post(id, updates)
   
        post = @posts.map do |post|
            if post["id"] == id
                post["title"] = updates["title"]
                post["body"] = updates["body"]
            end
        end
        return post
    end
    
end