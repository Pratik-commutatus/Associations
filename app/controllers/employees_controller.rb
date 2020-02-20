class EmployeesController < ApplicationController

def index
    @details =Employee.all
end

def new
    @detail =Employee.new
    @detail.build_account
end

def create
     @detail =Employee.new(employee_params)
     if @detail.save
         redirect_to employees_path
 else
         render :new
     end
end

private
    def employee_params
        params.require(:employee).permit(:name, account_attributes:[:number])
    end
end
