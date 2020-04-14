class BooksController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :setup_data

    def index
        render json: @data
    end

    #Show a single book
    def show
        book_to_show = {}
        for book in @data
            if params[:id] == book[:id]
                book_to_show = book
            end
        end
        render json: book_to_show
    end

    #Create a new book
    def create
        new_book = {}
        add_id = params[:id]
        add_title = params[:title]
        add_author = params[:author]
        new_book['id'] = add_id
        new_book['title'] = add_title
        new_book['author'] = add_author
        render json: new_book
    end

    #Update a book
    def update
        # respond back with the udpated book in json
        for book in @data
            if params[:id] == book[:id]
                book[:title] = params[:title]
            end
        end
        render json: @data
    end

     #Remove a book
     def destroy
        # respond back with the deleted book in json
       @data.delete_if {|book| book[:id] == params[:id]}
       render json: @data
    end

    private
    def setup_data
        @data = [
            {id: "1", title: "Harry Potter", author: "J.K Rowling"},
            { id: "2", title: "Name of the wind", author: "Patrick Rothfuss"},
            { id: "3", title: "Great Expectations", author: "Charles Dickens"},
            { id: "4", title: "Les Miserable", author: "Victor Hugo"}
        ]
    end
end