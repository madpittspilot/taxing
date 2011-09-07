class Business < ActiveRecord::Base

  has_many :years  
  accepts_nested_attributes_for :years, :allow_destroy => true#, :reject_if => lambda { |a| a[:state].blank? }
  
  belongs_to :suburb
  
  validates_presence_of :business_name
end
