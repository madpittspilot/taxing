class Suburb < ActiveRecord::Base
  has_many :businesses
  belongs_to :state
  
  accepts_nested_attributes_for :businesses#, :reject_if => lambda { |a| a[:number].blank? }, :allow_destroy => true
end
