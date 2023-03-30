class ColorPapersController < ApplicationController

  # def index
  #   @color_paper = Color_paper.all
  # end

  def create
    @color_paper = Color_paper.new
    if @color_paper.save
      redirect_to root_path
    else
      render :index
    end
  end

  def edit
    @color_paper = Color_paper.find(params[:id])
    unless @birthday.user == current_user
    end
  end

  def update
  end

  private

  def color_paper_params
    params.require(:color_paper).permit(:question, :question_answer, :image).merge(user_id :current_user.id :birthday_id)
  end
end

