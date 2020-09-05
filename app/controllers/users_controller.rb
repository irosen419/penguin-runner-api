class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def update
        user = User.find_by(id: params[:id])
        user.update(user_params)
    end

    private

    def user_params
        params.require(:user).permit(:highscore)
    end
end
