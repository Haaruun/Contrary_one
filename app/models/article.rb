class Article < ActiveRecord::Base

	belongs_to :category

	has_many :comments


	extend FriendlyId
    friendly_id :title, use: :slugged


    def next
    Article.where("id > ?", id).limit(1).first
  end

  def prev
    Article.where("id < ?", id).limit(1).first
  end

end
