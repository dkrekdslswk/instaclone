class ContentController < ApplicationController
  before_action :login_check, only: [:new, :edit, :update, :destroy] 
  before_action :set_content, only: [:show, :edit, :update, :destroy]
  
  def index
    @contents = Content.all
  end
  
  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)
    @content.user_id = current_user.id
    if  @content.save
      redirect_to content_index_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if  @content.update(content_params)
      redirect_to content_index_path
    else
      render 'edit'
    end
  end

  def destroy
    @content.destroy
    redirect_to content_index_path
  end
  
  private
  
  def content_params
    params.require(:content).permit(:content, :image)
  end
  
  def set_content
    @content = Content.find(params[:id])
  end
  
  def login_check
    if !logged_in?
      redirect_to new_session_path
    end
  end
end
