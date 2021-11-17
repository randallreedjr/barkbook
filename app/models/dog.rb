class Dog < ApplicationRecord
  has_many_attached :images
  belongs_to :owner, class_name: 'User', foreign_key: :user_id, optional: true
  has_many :likes

  scope :with_recent_likes, -> {
    joins("left outer join likes on likes.dog_id = dogs.id")
    .where("likes.created_at > ? or likes.created_at is null", 1.hour.ago)
    .group("dogs.id, dogs.name")
    .select("dogs.id, dogs.name, dogs.user_id, count(*) as recent_likes_count")
  }

  def likable?(user)
    return false if owner == user
    Like.where(dog: self, user: user).empty?
  end
end
