class Group < ApplicationRecord
    has_many :users, optional: true
end
