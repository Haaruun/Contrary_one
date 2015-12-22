class Article < ActiveRecord::Base

	belongs_to :category

	has_many :comments

	mount_uploader :image, ImageUploader

	mount_uploader :thumbnail, ThumbnailUploader


	extend FriendlyId
    friendly_id :title, use: :slugged

end
