class ChirrpsController < ApplicationController
    # before_action :authenticate!

    def index
        @chirrps = Chirrp.all
        @chirrp = Chirrp.new
    end

    def show
    end

    def new
        @chirrp = Chirrp.new
        # @users = User.all
        # @chirrp = current_user.chirrps.build
    end

    def create
        @chirrp = Chirrp.create(chirrp_params) do |chirrp|
            chirrp.user = current_user
            chirrp.parent_id = params[:parent_id]
            # @chirrp.save
            redirect_to chirrps_path
        end
    end

    def destroy
        @chirrp = Chirp.find(params[:id])
        # @chirp_id = params[:id]
    end

    private

    def chirrp_params
        params.require(:chirrp).permit(:chirp_text, :user_id, :media, :parent_id, :location, :created_at, :updated_at)
    end

end
