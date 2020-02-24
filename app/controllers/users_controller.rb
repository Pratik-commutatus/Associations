class UsersController < ApplicationController

    def index
        @users = User.all
        respond_to do |format|
          format.html # index.html.erb
          format.xml  { render xml: @users }
          format.json { render json: @users }
        end
    end
    def new
        @user=User.new
    end
    def create
        @user=User.new(user_params)
        if @user.save
            redirect_to users_path
        else
            render user_path
        end
    end

    private
def user_params
    params.require(:user).permit(:age, :address, :password, :telephone, :date, :time, :places, :duration, :weight, :email, :month, :week, :search, :url, :color, country: [])
end


end
