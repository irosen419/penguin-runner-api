class User < ApplicationRecord
    has_many :user_achievements
    has_many :achievements, through: :user_achievements

end
