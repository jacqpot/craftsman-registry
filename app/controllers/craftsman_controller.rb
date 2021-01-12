class CraftsmanController < ApplicationController
    def index
        
        if current_user
            set_user
            
            @user_detail = UserDetail.find_by(user_id: @user.id)
        end
        @user_details = UserDetail.all
        @users = User.all
        @skills = Skill.all
        @skill = Toolbelt.search(params[:search])
    end

    private

    def set_user 
      @user = User.find_by(id: current_user.id)
    end
end
