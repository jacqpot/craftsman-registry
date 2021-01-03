class RequestsController < ApplicationController

    
   
    def new

       @request = Request.new
    end
  
    def create
       @request = Request.new(request_params)
       
      
          if @request.save
            RequestMailer.with(request: @request).new_request.deliver_now
            redirect_to root_path
          else
             format.html { render :new }
          end

       
    end
    

    
    private
   
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
       params.require(:request).permit(:name, :email, :phone_number, :description)
    end
end