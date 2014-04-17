class Photo < ActiveRecord::Base

  has_attached_file :pic, :styles => { :medium => "300x300#", :thumb => "100x100#" },
                    :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :pic,
                    :content_type => /\Aimage\/.*\Z/
  belongs_to :user
  belongs_to :listing

  validates :pic, :attachment_presence => true
end
