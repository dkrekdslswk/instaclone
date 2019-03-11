class Content < ApplicationRecord
    mount_uploader :image, ImageUploader
    validates :image,    presence: true
    validates :content,    presence: true
    
    belongs_to :user
    delegate :name, to: :user, prefix: true
end
