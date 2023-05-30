class ColorPapersController < ApplicationController

  def index
    @color_papers = ColorPaper.all
  end

  def new
    @color_paper = ColorPaper.new
    @birthday_id = params[:birthday_id]
    
  end

  def create
    #ここでcolor_paperレコードにbirthday_idを代入している
    @color_paper = ColorPaper.find_or_initialize_by(birthday_id: params[:color_paper][:birthday_id], user_id: current_user.id)
    birthday = Birthday.find_by(id: params[:color_paper][:birthday_id])
    # @color_paper.save if @color_paper.new_record?
    @picture = Picture.new(color_paper_params)#ここでpictureの保存
      redirect_to birthday_path(birthday.id)#調べる
  end

  def show
    @color_paper = ColorPaper.find(params [:id])
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
    params.require(:color_paper).permit(:title, :image)
  end
end

