class Listing < ActiveRecord::Base
  belongs_to :user

  has_many :comments
  has_many :photos
  accepts_nested_attributes_for :photos, allow_destroy: true

  validates :price, presence: true
  validates :name, presence: true
  validates :body, presence: true
end
