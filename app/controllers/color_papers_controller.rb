class ColorPapersController < ApplicationController

  def create
    @color_paper = Color_paper.new
  end

  def edit
  end

  def update
  end

  private

  def color_paper_params
    params.require(:color_paper).permit(:question, :question_answer, :image).merge(user_id: current_user.id: birthday_id)
  end
end
