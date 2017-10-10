class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :must_carry
end

def must_carry
  if :mens_apparel === false && :womens_apparel === false
    errors.add(:mens_apparel, :womens_apparel, "Must carry clothes")
  end
end
