class CalcsController < ApplicationController
    def try
        @result=Calc.multiply(params[:c])
        render :index
    end
end
