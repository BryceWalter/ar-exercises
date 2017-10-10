class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :must_carry

  before_destroy :is_empty?

private

  def must_carry
    if :mens_apparel === false && :womens_apparel === false
      errors.add(:mens_apparel, :womens_apparel, "Must carry clothes")
    end
  end

  def is_empty?
    if self.employees.size > 0
      return false
    end
  end
end
