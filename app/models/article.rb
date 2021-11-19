class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    validates :image, file_size: { less_than: 1.megabytes}
    mount_uploader :image, ImageUploader
end
