class Article < ActiveRecord::Base

	belongs_to :category

	has_many :comments


	extend FriendlyId
    friendly_id :title, use: :slugged

end
