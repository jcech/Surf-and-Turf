class Listing < ActiveRecord::Base
  belongs_to :user

  has_many :comments
  has_many :photos
  accepts_nested_attributes_for :photos

  validates :price, presence: true
end
