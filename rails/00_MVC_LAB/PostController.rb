require_relative("PostModel")
require_relative("PostView")

class PostController
    def initialize
        # create instamce of postview and postmodel
        @model = PostModel.new
        @view = PostView.new
    end
    
    def index
        #retrieve all posts - PostModel
        posts = @model.all
        
        #display posts to the user -PostView
        @view.index(posts)
    end

    def show
        #retrieve the id of the post the user want to view -PostView
        id = @view.selection.to_i
        
        #find the correct post - PostModel
        post = @model.find(id)

        #display the post to the user - PostView
        @view.show(post)
    end

    def create
        #Get information from the user about the post - PostView 
        post_information = @view.create
        
        #Save the post - PostModel 
        new_post = @model.create(post_information)
    end

    def edit
        # get id and updated post
        id = @view.selection.to_i
        post_update = @view.update

        # find post and update post
        @model.edit_post(id, post_update)
    #    @model.update_post(post)
        @view.show_updated(id)
        
    end

    def destroy
         #retrieve the id of the post the user want to delete -PostView
         id = @view.selection.to_i

        #delete post - Postmodel
         @model.delete(id)

        #inform user post is deleted
        @view.show_deleted(id)
    end
end