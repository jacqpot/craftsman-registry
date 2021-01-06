class Skill < ApplicationRecord
    has_many :toolbelts
    has_many :users, through: :toolbelts
end
