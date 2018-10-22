class Customer < ApplicationRecord
  has_many :orders
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  def full_name
    first_name + ' ' + last_name
  end
end
