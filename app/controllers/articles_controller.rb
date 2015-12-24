class ArticlesController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]
  def index
    if params[:category].blank? 
       @search = Article.all.order("created_at DESC").search(params[:q])
       @article = @search.result
     else
      @category_id = Category.find_by(name: params[:category]).id
      @search = Article.where(category_id: @category_id).order("created_at DESC").search(params[:q])
      @article = @search.result
    end
  end

  def show
    @article = Article.friendly.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @article = Article.friendly.find(params[:id])
  end

  def update
    @article = Article.friendly.find(params[:id])

    if @article.update(article_params)
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end

   def delete
    @article = Article.friendly.find(params[:id])
  end

  def destroy
    @article = Article.friendly.find(params[:id])

    if @article.destroy
      redirect_to(:action => 'index')
    else
      render('destroy')
    end
  end

  private

  def article_params
    params.require(:article).permit(:author, :title, :source, :content, :summary, :slug, :category_id, :image, :image_file_name)
  end

end
