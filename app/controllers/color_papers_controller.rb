class ColorPapersController < ApplicationController

  def index
    @color_papers = ColorPaper.all
  end

  def new
    @color_paper = ColorPaper.new
    @birthday_id = params[:birthday_id]
  end

  def create
    @color_paper = ColorPaper.find_or_initialize_by(birthday_id: params[:color_paper][:birthday_id])

    #ここでcolor_paperレコードにbirthday_idを代入している
    # @color_paper.birthday_id = params[:color_paper][:birthday_id]
    #color_paperとimageを順番に保存する記述

    
    if @color_paper.save
    @color_paper = Picture.new(color_paper_params)#ここでpictureの保存
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @color_paper = ColorPaper.find(params[:id])
    @color_paper = Birthday.find(params[:id])
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
    params.require(:color_paper).permit(:birthday_id).merge(user_id: current_user.id, birthday_id: params[:birthday_id])
  end
end

