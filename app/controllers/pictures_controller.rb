class PicturesController < ApplicationController
  before_action :authenticate_user!
  def index
    @pictures = Picture.all
  end

  def new
    if params[:back]
      @picture = Picture.new(pictures_params)
    else
      @picture = Picture.new
    end
  end

  def confirm
    @picture = Picture.new(pictures_params)
    binding.pry
    render :new if @picture.invalid?
  end

  def create
    @picture = Picture.new(pictures_params)
    @picture.user_id = current_user.id
    binding.pry
    if @picture.save
      redirect_to pictures_path, notice: "写真を投稿しました！"
      #NoticeMailer.sendmail_picture(@picture).deliver
    else
      render 'new'
    end
  end

  private
    def pictures_params
      params.require(:picture).permit(:title, :content, :picture, :picture_cache)
    end
end
