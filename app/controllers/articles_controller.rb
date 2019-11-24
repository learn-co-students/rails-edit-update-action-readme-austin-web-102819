class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

  # add edit and update methods here
  def edit
    # Have the #edit method store the article record in an instance variable
    @article = Article.find(params[:id])
  end
   
  def update
    # Find the article that matches the params id
    @article= Article.find(params[:id])
    # Update the article according to what's input in the params
    @article.update(title: params[:article][:title], description: params[:article][:description])
    #Redirect the user to the show page so they can see the updated record.
    redirect_to article_path(@article)
  end
end
