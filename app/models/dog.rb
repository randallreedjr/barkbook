class Dog < ApplicationRecord
  has_many_attached :images
  belongs_to :owner, class_name: 'User', foreign_key: :user_id, optional: true
  has_many :likes

  def likable?(user)
    return false if owner == user
    Like.where(dog: self, user: user).empty?
  end
end
