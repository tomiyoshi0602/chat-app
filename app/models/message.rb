class Message < ApplicationRecord
  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end

  belongs_to :user
  belongs_to :room
  has_one_attached :image
end
