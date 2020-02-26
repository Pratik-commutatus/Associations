class AjaxformsController < ApplicationController
    def index
        @details=Ajaxform.all
        respond_to do |format|
            format.html # index.html.erb
            format.xml  { render xml: @details.as_json }
            format.json { render json: @details }
            format.js { render js: @details }
          end
    end

    def new
        @detail=Ajaxform.new
    end

    def create
        @detail=Ajaxform.new(ajaxform_params)
        if @detail.save!
            redirect_to ajaxforms_path
    else
            render :new
        end
   end




   private
   def ajaxform_params
    params.require(:ajaxform).permit(:name, :age)
   end
end


