class BirthdaysController < ApplicationController
  def index
    @birthdays = Birthday.includes(:user)
  end

  def new
    @birthday = Birthday.new
    @birthday_id = params[:birthday_id]
    @color_paper_id = params[:color_paper_id]
  end

  def create
    @birthday = Birthday.new(birthday_params)
    if @birthday.save
      @color_paper = ColorPaper.new(user: current_user, birthday: @birthday)
      @color_paper.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @birthday = Birthday.find(params[:id])
    @color_paper = @birthday.color_paper
    @comment = Comment.find_or_initialize_by(user_id: current_user.id, birthday_id: @birthday.id)
    #どのユーザーがどの誕生日に対してしているコメント
  end

  def edit
    @birthday = Birthday.find(params[:id])
    unless @birthday.user == current_user
      redirect_to birthdays_path(@birthday.id)
    end
  end

  def update
    @birthday = Birthday.find(params[:id])
    if @birthday.update(birthday_params)
      redirect_to birthday_path
    else
        #updateを失敗すると編集ページへ
      render :edit
    end
  end




  private

  def birthday_params
    params.require(:birthday).permit(:date, :celebrate_person_name).merge(user_id: current_user.id)
  end
end
