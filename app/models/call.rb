class Call < ApplicationRecord
  belongs_to :caller, foreign_key: 'caller_id', class_name: 'User'
  belongs_to :random_user, foreign_key: 'random_user_id', class_name: 'User'
  validates :duration, presence: true, numericality: { only_integer: true }
end
