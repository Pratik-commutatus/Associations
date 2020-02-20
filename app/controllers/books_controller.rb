class BooksController < ApplicationController
    def index
        @books=Book.all
    end
    
    def show
        @author=Author.find(params[:id])
        @author.images.build
    
 end
 private
 def author_params
     params.require(:book).permit(:author_id, :id, :_destroy, :bookname, images_attributes: [:id, :_destroy, :imagename])
 end
end
