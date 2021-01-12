
class UserDetailsController < ApplicationController
    before_action :set_user_Detail, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
    # GET /userDetails
    # GET /userDetails.json
    def index
       @user_detail = UserDetail.all
    end
    
    # GET /userDetails/1
    # GET /userDetails/1.json
    def show

      @user = User.find(@user_detail.user_id)
   
    end
    
    # GET /userDetails/new
    def new
       @user_detail = UserDetail.new
      #  byebug
   end
   
   # GET /userDetails/1/edit
   def edit
   end
   
   # POST /userDetails
   # POST /userDetails.json
   def create
      @user_detail = UserDetail.new(user_details_params)
      
      if @user_detail.save
         redirect_to "craftsman/index"
         
      else
         byebug
      
      
      render :new
      end
      
      
    end
    
    # PATCH/PUT /userDetails/1
    # PATCH/PUT /userDetails/1.json
    def update
       respond_to do |format|
         # byebug
          if @user_detail.update(user_details_params)
             format.html { redirect_to @user_detail, notice: 'user details where successfully updated.' }
          else
             format.html { render :edit }
          end
       end
       
    end
    
    # DELETE /userDetails/1
    # DELETE /userDetails/1.json
    def destroy
       @user_detail.destroy
          respond_to do |format|
          format.html { redirect_to userDetails_url, notice: 'user details where successfully destroyed.' }
          format.json { head :no_content }
       end
    end
    
    private
    
    # Use callbacks to share common setup or constraints between actions.
    def set_user_Detail
       @user_detail = UserDetail.find(params[:id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_details_params
       params.require(:user_detail).permit(:name, :phone_number, :state, :city, :user_id)
    end
 end