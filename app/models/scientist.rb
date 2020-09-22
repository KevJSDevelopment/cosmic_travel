class Scientist < ApplicationRecord
    validates :name, presence: true, uniqueness: {case_sensitive: false}
    validates :field_of_study, presence: true

    has_many :missions
    has_many :planets, through: :missions
end
