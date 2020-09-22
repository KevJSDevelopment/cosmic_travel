class Mission < ApplicationRecord
    validates :name, presence: true
    validates :planet_id, presence: true
    validates :scientist_id, presence: true

    belongs_to :scientist
    belongs_to :planet
end
