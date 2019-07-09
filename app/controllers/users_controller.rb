class UsersController < ApplicationController
    before_action :authenticate!, except: [:index, :show]

   def index
    @chirrps = Chirrp.all.order("created_at DESC")
    @users = User.all
   end

   



    private

    def user_params
        params.require[:user].permit[:name, :username, :password, :location, :avatar, :cover, :about, :followers_count, :following_count, :chirps_count, :created_at, :updated_at]
    end

    def check_user
        if @user != current_user
            redirect_to users_path
        end 
    end

    def set_user
        @user = User.friendly.find(params[:id])
    end
end
