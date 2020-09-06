class UserAchievementsController < ApplicationController
    def index
        user_achievements = UserAchievement.all
        render json: user_achievements
    end

    def create
        user_achievement = UserAchievement.create(user_achievement_params)
        render json: user_achievement
    end

    private

    def user_achievement_params
        params.require(:user_achievement).permit(:user_id, :achievement_id)
    end
end
