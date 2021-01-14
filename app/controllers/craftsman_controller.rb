class CraftsmanController < ApplicationController
    def index
        
        if current_user
            set_user
            
            
        end
        @users = User.all
        @skills = Skill.all
        # @skill = Toolbelt.search(params[:search])
    end

    def show
        if current_user

            @user = User.find_by(id: current_user.id)
        end
        @toolbelt = Toolbelt.new
    end

    private

    def set_user 
      @user = User.find_by(id: current_user.id)
    end
end
