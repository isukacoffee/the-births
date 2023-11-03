class ColorPapersController < ApplicationController
  def show
    @color_paper = ColorPaper.find(params[:id])
    
  end

  def edit
    @color_paper = ColorPaper.find(params[:id])
    unless @color_paper.user == current_user
      redirect_to _path
    else
        #updateを失敗すると編集ページへ 
      render :edit
    end
  end

  def update
  end

  private

  def color_paper_params
    params.require(:color_paper).permit(:title, :image)
  end
end

