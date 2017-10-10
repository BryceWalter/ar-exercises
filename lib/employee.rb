class Employee < ActiveRecord::Base
  belongs_to :store, required: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, :inclusion => 40..200
end
