class PostController < ApplicationController

  def index
    all_posts = Post.all
    respond_to do |format|
      format.html do
        render "index.html.erb", locals: { posts: all_posts }
      end #format
      #rescue goes in here somewhere. get that later.
      format.json do
        render json: all_posts
      end # format
    end #respond
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
        end #format
      end #respond
    end #if
  end #show

  def about
    # redirect
  end #about

  def new
    new_post = Post.new
    respond_to do |format|
      format.html do
        render "new.html.erb", locals: { post: new_post }
      end
      format.json do
        render json: new_post
      end
    end
  end #new

  def create
    begin
      # not going to use this because I honestly don't understand it well enough yet
      # new_blog_post = Post.create(post_params)
      new_blog_post = Post.create(title: params[:post].fetch(:title),
                                    body: params[:post].fetch(:body))
      respond_to do |format|
        format.html do
          render json: new_blog_post
        end #format
        format.json do
          render json: new_blog_post
        end #format
      end#respond
    end #begin
  end #create

end #class
