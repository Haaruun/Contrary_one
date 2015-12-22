class CommentsController < ApplicationController
	def create
		@article = Article.friendly.find(params[:article_id])
		@comment = @article.comments.create(params[:comment].permit(:name, :body))

		redirect_to article_path(@article)
	end
end
