class PostController < ApplicationController
  def index
    all_posts = Post.all
    respond_to do |format|
      format.html do
        render "index.html.erb", locals: { posts: all_posts }
      end
      #rescue goes in here somewhere. get that later.
      format.json do
        render json: all_posts
    format
  end #index

  def new
    new_post = Post.new
  end # new

  def show
    if Post.exists?(params[:id])
      found_post = Post.find(params[:id])
      respond_to do |format|
        format.html do
          render "show.html.erb", locals: { post: found_post}
        end
        format.json do
          render json: found_post
        end
      end
    end
  end #show

  def new
    new_post = Post.new
    respond_to do |format|
      format.html do
        render "new.html.erb". locals: { post: new_post }
      end
      format.json do
        render json: new_post
      end
    end
  end #new

  def create
    begin
      post

end #class
