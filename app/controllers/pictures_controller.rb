class PicturesController < ApplicationController

  def new
    @picture = Picture.new
    @color_paper_id = params[:color_paper_id]
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:title, :image, :color_paper_id).merge(user_id: current_user.id)
  end
end
