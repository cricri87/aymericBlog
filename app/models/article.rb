class Article < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :comments
  validates :title, presence: true, length: {minimum: 3}
  validates :text, presence: true, length: {minimum: 5}

end
