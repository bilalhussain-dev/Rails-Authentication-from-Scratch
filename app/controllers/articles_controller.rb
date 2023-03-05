class ArticlesController < ApplicationController

  before_action :set_article_params, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = "Article is successfully Created"
      redirect_to article_path(@article)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show

  end


  def edit

  end

  def update

    if @article.update(article_params)
      flash[:success] = "Successfully Updated."
      redirect_to article_path(@article)

    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy

    @article.destroy
    flash[:danger] = "Article was successfully Deleted"
    redirect_to articles_path
  end


  private
  def article_params
    params.require(:article).permit(:title, :description)
  end
  def set_article_params
    @article = Article.find(params[:id])
  end
end