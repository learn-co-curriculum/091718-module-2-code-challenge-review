class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :item
  validates :customer, presence: true
  validates :item, presence: true
  validates :quantity, numericality: {greater_than_or_equal_to: 1}
  accepts_nested_attributes_for :customer, reject_if: :all_blank
  accepts_nested_attributes_for :item, reject_if: :all_blank
end
