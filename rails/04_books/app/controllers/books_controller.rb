class BooksController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :setup_data

    def index
        render json: session[:books]
    end

    #Show a single book
    def show
        # book_to_show = {}
        for book in session[:books]
            if params[:id] == book[:id]
                render json: book
                # book_to_show = book
            end
        end
        # render json: book_to_show
    end

    #Create a new book
    def create
        new_book = {}
        new_book['id'] = params[:id]
        new_book['title'] = params[:title]
        new_book['author'] = params[:author]
        session[:books].push(new_book)
        render json: new_book
    end

    #Update a book
    def update
        # respond back with the udpated book in json
        title = params[:title]
        author = params[:author]

        for book in session[:books]
            if book['id'] == params[:id]
                book[:title] = title
                book[:author] = author
                render json: book
            end
        end
    end

     #Remove a book
     def destroy
        # respond back with the deleted book in json
        session[:books].delete_if {|book| book[:id] == params[:id]}
        render json: session[:books]
    #    session[:books] = session[:books].select {|book| book["id"] != params[:id]} 
    #     render json: session[:books]
    end

    private
    def setup_data
        session[:books] = [
            {id: "1", title: "Harry Potter", author: "J.K Rowling"},
            { id: "2", title: "Name of the wind", author: "Patrick Rothfuss"},
            { id: "3", title: "Great Expectations", author: "Charles Dickens"},
            { id: "4", title: "Les Miserable", author: "Victor Hugo"}
        ] unless session[:books]
    end
end