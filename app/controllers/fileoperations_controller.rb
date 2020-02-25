class FileoperationsController < ApplicationController
    def index
        @result=File.read("app/fileoperationspractice/test.txt")
    end
def change
    @result=Fileoperation.make(params[:message])
    render :index
end

end
