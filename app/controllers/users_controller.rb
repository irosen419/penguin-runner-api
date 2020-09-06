class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end
    
    def create
        user = User.create(user_params(:username))
        render json: user
    end

    def update
        user = User.find(params[:id])
        # byebug
        user.update(user_params(:highscore))
    end

    private

    def user_params(*args)
        params.require(:user).permit(*args)
    end
end
