class Mission < ApplicationRecord
    validates :name, presence: true, uniqueness: {case_sensitive: false}
    validates :planet_id, presence: true
    validates :scientist_id, presence: true

    belongs_to :scientist
    belongs_to :planet
end
