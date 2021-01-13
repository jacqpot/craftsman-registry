class SkillsController < ApplicationController
    before_action :set_skills, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
    # GET /skills
    # GET /skills.json
    def index
        @skills = Skill.all
    end
    
    # GET /skills/1
    # GET /skills/1.json
    def show
      
   
    end
    
    # GET /skills/new
    def new

        @skill = Skill.new
    end
    
    # GET /skills/1/edit
    def edit
    end
    
    # POST /skills
    # POST /skills.json
    def create
        @skill = Skill.new(user_details_params)
       

          if !@skill.save
            flash.now[:errors] = @skill.errors.full_messages
            render :new 
          end
       end
       
    end
    
    # PATCH/PUT /skills/1
    # PATCH/PUT /skills/1.json
    def update

          if !@skill.update(user_details_params)
            flash.now[:errors] = @skill.errors.full_messages
            render :new 
          end
       end
       
    end
    
    # DELETE /skills/1
    # DELETE /skills/1.json
    def destroy
        @skill.destroy
   
          format.html { redirect_to skills_url, notice: 'user details where successfully destroyed.' }
          format.json { head :no_content }
       end
    end
    
    private
    
    # Use callbacks to share common setup or constraints between actions.
    def set_skills
        @skill = Skill.find(params[:id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_details_params
       params.require(:user_detail).permit(:name, :phone_number, :state, :city, :user_id)
    end
end
