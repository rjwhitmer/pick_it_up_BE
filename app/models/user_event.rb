class UserEvent < ApplicationRecord
    belongs_to :sporting_event
    belongs_to :user
    validates :sporting_event, uniqueness: true
end
