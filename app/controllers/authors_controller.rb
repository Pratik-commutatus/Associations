class AuthorsController < ApplicationController
   
def index
    @authors=Author.all
end
def show
     @author = Author.find(params[:id])
     @author.books.build
     @author.images.build
end

def new
    @author=Author.new
    @author.images.build
end

def create
    @author=Author.new(author_params)
    if @author.save
        redirect_to authors_path
    else
        render :new
    end
end


def edit
    @author=Author.find(params[:id])
end

def update
    @author=Author.find(params[:id])
    if @author.update(author_params)
        redirect_to authors_path
    else
        render:edit
    end
end

def destroy
    @author=Author.find(params[:id])
    if @author.destroy
      redirect_to authors_path
    else
        puts "some error in destroy"
    end
end

def lol
    @author = Author.find(params[:id])
    @author.books.build
    @author.images.build
end

private
def author_params
    params.require(:author).permit(:name, books_attributes: [:id, :_destroy, :bookname], images_attributes: [:id, :_destroy, :imagename])
end

end
