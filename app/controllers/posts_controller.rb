class PostsController < ApplicationController
  before_action :set_post
  before_action :authorize_req, only: [:show, :edit, :update, :destroy, :new, :create]
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @post = Post.all
  end

  def new
    @post = Post.new
 end

 def create
    @post = current_user.posts.new(post_param)

    if @post.save
       redirect_to @post
    else
       render 'new'
    end
 end
 
 def show
 end

 def edit
 end

 def update
    if @post.update(post_param)
       redirect_to @post
    else
       render 'edit'
    end
 end
  
 def destroy
  @post.destroy
  redirect_to posts_path
end

  private
  def set_post
    if params[:id]
      @post = Post.find_by(id: params[:id])
    else
      @post = Post.new
  end
end

  def authorize_req
    authorize(@post, policy_class: PostPolicy)
  end

  def find_post
    @post =Post.find(params[:id])
 end

 def post_param
    params.require(:post).permit(:title)
 end
 
end
