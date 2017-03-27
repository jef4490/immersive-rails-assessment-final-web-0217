class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
  belongs_to :user
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { :in => 1..5, message: "The rating must be between 1 and 5."}
  validates :user_id, presence: true
  validates :guest_id, presence: true
  validates :episode_id, presence: true

end
