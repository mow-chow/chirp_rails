
class UsersController < ApplicationController
    # before_action :authenticate!, except: [:index, :show]

    def show
      @user = User.find(params[:id])
    end
  
    def index
      @user = User.all
    end
  
    def new
      @user = User.new
      @user.chirrps.build
    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to user_path(@user)
      else
        render :new
      end
    end
  
    private

    def user_params
        params.require(:user).permit(:name, :username, :password, :location, :avatar, :cover, :about, :followers_count, :following_count, :chirps_count, :created_at, :updated_at)
    end

    def check_user
        if @user != current_user
            redirect_to chirrps_path
        end 
    end

    def set_user
        @user = User.friendly.find(params[:id])
    end
  end

#class UsersController < ApplicationController
#     # before_action :authenticate!, except: [:index, :show]

#    def index
    
#     @users = User.all
#    end

#    def new
#     @user = User.new
#    end

#    def created
#    end

   



#     private

#     def user_params
#         params.require[:user].permit[:name, :username, :password, :location, :avatar, :cover, :about, :followers_count, :following_count, :chirps_count, :created_at, :updated_at]
#     end

#     def check_user
#         if @user != current_user
#             redirect_to chirrps_path
#         end 
#     end

#     def set_user
#         @user = User.friendly.find(params[:id])
#     end
# end
