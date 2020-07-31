class SportingEvent < ApplicationRecord
    belongs_to :park
    has_many :user_events
end
