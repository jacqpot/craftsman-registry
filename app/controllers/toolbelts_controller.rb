class ToolbeltsController < ApplicationController
        before_action :set_toolbelt, only: [:edit, :update, :destroy] 


        
        def index 
           if  current_user
               @toolbelts = current_user.toolbelts
           else 
               @toolbelts = Toolbelt.all
           end
           @skills = Skill.all
           @toolbelt = Toolbelt.new
        end
   
   
       def new 
            @skills = Skill.all
           @toolbelt = Toolbelt.new
        #    @toolbelt.build_person_of_interest
       end
       def create 
        #    @toolbelt = current_user.toolbelts.build(toolbelt_params)
        @toolbelt = Toolbelt.new(toolbelt_params)

           if @toolbelt.save 
               redirect_to user_toolbelts_path(current_user.id)
           else 
               flash.now[:errors] = @toolbelt.errors.full_messages
               render :new 
   
           end
       end
       def edit
       end
       
       def update
   
       if @toolbelt.update(toolbelt_params)
           redirect_to root 
       else
           flash.now[:errors] = "please make sure each field is filled out correctly"
               render :new
           render :edit
       end
       end
   
       def destroy
       @toolbelt.destroy
       flash[:notice] = "skill removed."
       redirect_to 'user_details#show'
       end

   
       private
       def set_toolbelt
           @toolbelt = Toolbelt.find(params[:id])
       end
       def toolbelt_params
       params.require(:toolbelt).permit(:user_id, :skill_id )
       end


end
