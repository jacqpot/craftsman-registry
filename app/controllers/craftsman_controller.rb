class CraftsmanController < ApplicationController
    def index
        set_user

        if set_user
            @user_detail = UserDetail.find_by(user_id: @user.id)
        end
        @user_details = UserDetail.all
        @users = User.all

    end

    private

    def set_user 
      @user = User.find_by(id: current_user.id)
    end
end
