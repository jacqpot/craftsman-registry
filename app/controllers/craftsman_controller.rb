class CraftsmanController < ApplicationController
    def index
        @user_detail = UserDetail.all
        @users = User.all
    end
end
