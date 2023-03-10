class Article < ActiveRecord::Base
  belongs_to :user
  paginates_per 2
  validates :title, presence: true, length: { minimum: 5, maximum: 1200}
  validates :description, presence: true, length: { minimum: 5, maximum: 1200}
  validates :user_id, presence:true
end