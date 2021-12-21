class Member < ApplicationRecord
  has_many :posts, dependent: :destroy
end
