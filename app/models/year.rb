class Year < ActiveRecord::Base
  belongs_to :business
  has_many :receipts
  has_many :payments
  
  accepts_nested_attributes_for :receipts, :allow_destroy => true#, :reject_if => lambda { |a| a[:state].blank? }
  accepts_nested_attributes_for :payments, :allow_destroy => true#, :reject_if => lambda { |a| a[:state].blank? }
end
