class BooksController < ApplicationController
    def new
        @book = Book.new
    end
    
    def create
        book = Book.new(book_params)
        
        .save
        
        redirect_to '/books'
    end
    
    private
    def book_params
        params.requiire(:book).permit(:title, :body)
    end
end
