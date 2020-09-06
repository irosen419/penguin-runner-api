class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end
    
    def create
        User.create(user_params(:username))
    end

    def update
        user = User.find_by(id: params[:id])
        user.update(user_params(:highscore))
    end

    private

    def user_params(*args)
        params.require(:user).permit(*args)
    end
end
