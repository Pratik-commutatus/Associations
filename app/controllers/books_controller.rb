class BooksController < ApplicationController
    def index
        @books=Book.all
    end
    
    def show
        @book=Book.find(params[:id])
        @author = Author.find(params[:author_id])
        @book.images.build
    
 end

 def update
   
    @book=Book.find(params[:id])
    if @book.update(book_params)
        redirect_to 
        author_path
    else
        puts("error")
    end
end
 private
 def book_params
     params.require(:book).permit(:author_id, :id, :_destroy, :bookname, images_attributes: [:id, :_destroy, :imagename]) 
 end
end
