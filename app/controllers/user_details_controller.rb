class UserDetailsController < ApplicationController
    before_action :set_user_Details, only: [:show, :edit, :update, :destroy]
    
    # GET /userDetails
    # GET /userDetails.json
    def index
       @user_details = UserDetails.all
    end
    
    # GET /userDetails/1
    # GET /userDetails/1.json
    def show
    end
    
    # GET /userDetails/new
    def new
       @user_details = UserDetails.new
    end
    
    # GET /userDetails/1/edit
    def edit
    end
    
    # POST /userDetails
    # POST /userDetails.json
    def create
       @user_details = UserDetails.new(user_details_params)
       
       respond_to do |format|
          if @user_details.save
             format.html { redirect_to @user_details, notice: 'User Details where successfully created.' }
             format.json { render :show, status: :created, location: @user_details }
          else
             format.html { render :new }
             format.json { render json: @user_details.errors, status: :unprocessable_entity }
          end
       end
       
    end
    
    # PATCH/PUT /userDetails/1
    # PATCH/PUT /userDetails/1.json
    def update
       respond_to do |format|
          if @user_details.update(user_details_params)
             format.html { redirect_to @user_details, notice: 'user details where successfully updated.' }
             format.json { render :show, status: :ok, location: @user_details }
          else
             format.html { render :edit }
             format.json { render json: @user_details.errors, status: :unprocessable_entity }
          end
       end
       
    end
    
    # DELETE /userDetails/1
    # DELETE /userDetails/1.json
    def destroy
       @user_details.destroy
          respond_to do |format|
          format.html { redirect_to userDetails_url, notice: 'user details where successfully destroyed.' }
          format.json { head :no_content }
       end
    end
    
    private
    
    # Use callbacks to share common setup or constraints between actions.
    def set_user_Details
       @user_details = UserDetails.find(params[:id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_details_params
       params.require(:userDetails).permit(:name, :phone_number, :state, :city, :user_id)
    end
 end