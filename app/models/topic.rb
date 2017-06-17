class Topic < ActiveRecord::Base
    mount_uploader :picture, PictureUploader

    validates :title, presence: true
    validates :picture, presence: true

    belongs_to :user
    has_many :comments, dependent: :destroy
end
