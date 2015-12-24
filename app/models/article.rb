class Article < ActiveRecord::Base
  has_attached_file :image, styles: {large: "800x800", medium: "600x600", thumb: "150x150"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


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
