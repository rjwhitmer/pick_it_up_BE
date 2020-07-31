class User < ApplicationRecord
    has_secure_password
    has_many :user_events
    has_many :sporting_events, through: :user_events
end
