class PostsController < ApplicationController
	
  def index
   @posts = Post.all.order(date: :desc)
  end 

  def new
    @post = Post.new  
	end

  def edit
    @post = Post.find(params[:id])
  end

  def update
  @post = Post.find(params[:id])
 
  if @post.update(post_params)
    redirect_to @post
  else
    render 'edit'
  end
  end


  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.build
  end

  def create
  @post = Post.new(post_params)
  if @post.save
    redirect_to @post
  else
    render 'new'
  end
end

  def post_params
    params.require(:post).permit(:title, :date, :text, :author)
  end

  def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to posts_path
  end
end

