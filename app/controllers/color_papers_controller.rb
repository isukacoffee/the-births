class ColorPapersController < ApplicationController

  def index
    @color_paper = ColorPaper.all
  end

  def new
    @color_paper = ColorPaper.new
  end

  def create
    @color_paper = ColorPaper.new(color_paper_params)
    @color_paper = Birthday.find(params[:id])
    if @color_paper.save
    @color_paper = Picture.new(color_paper_params)#ここでpictureの保存
      redirect_to root_path
    else
      render :new
    end
  end

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
    params.require(:color_paper).permit(:image).merge(user_id: current_user.id)
  end
end

