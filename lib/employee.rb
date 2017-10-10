class Employee < ActiveRecord::Base
  belongs_to :store, required: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, :inclusion => 40..200

  before_create :set_password

  private

  def set_password
    self.password = [*('a'..'z'),*('0'..'9')].shuffle[0,8].join
    puts self.password
  end

end
