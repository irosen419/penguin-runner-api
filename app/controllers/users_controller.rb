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
        user = User.find_by(username: user.username)
        render json: user
        # byebug
    end

    def update
        user = User.find(params[:id])
        user.update(user_params(:highscore, :rocks_dodged))
        render json: user
    end

    private

    def user_params(*args)
        params.require(:user).permit(*args)
    end
end
