class CalculatorsController < ApplicationController
    def index
    end
  
    def new
      @result = Calculator.send(params[:operation], *[params[:a], params[:b]])
      render :index
    end

    def test
      @resultt = Calculator.mult(params[:c])
      render :index
    end

    def subtract
    @subresult=Calculator.subtr(params[:j], params[:k])
    render :index
   end

   def mmm
    @mean= Calculator.mean(params[:m])
    @median= Calculator.median(params[:m])
    
    render :index
   end

   
end
