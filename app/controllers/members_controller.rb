class MembersController < ApplicationController
    def index
        @members=Member.all
    end
    def new
        @member=Member.new
    end
    def create
        @member=Member.new(member_params)
        if @member.save
            redirect_to new_member_path
        else
            render :new
        end
    end

    private
def member_params
    params.permit(:country, :age, :address, :password, :telephone, :date)
end
end
