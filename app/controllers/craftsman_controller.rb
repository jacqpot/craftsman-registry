class CraftsmanController < ApplicationController
    def index
        
        if current_user
            set_user
            
            
        end
        @users = User.all
        @skills = Skill.all
        # @skill = Toolbelt.search(params[:search])
    end

    private

    def set_user 
      @user = User.find_by(id: current_user.id)
    end
end
