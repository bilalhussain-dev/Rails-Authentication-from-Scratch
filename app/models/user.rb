class User < ActiveRecord::Base
  validates :username, presence: true, length: {minimum: 5, maximum: 100}
  validates :email, presence: true, uniqueness: true , length: {minimum: 5, maximum: 30},
            format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i}
end