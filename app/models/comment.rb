class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :listing
  validates :body, presence: true
end
