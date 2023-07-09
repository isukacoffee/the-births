class BirthdaysController < ApplicationController
  def index
    @birthdays = Birthday.includes(:user)
  end

  def new
    @birthday = Birthday.new
    # @color_paper.id = params[:color_paper_id]
  end

  def create
    @birthday = Birthday.new(birthday_params)
    
    if @birthday.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @birthday = Birthday.find(params[:id])
    @color_paper = Birthday.find(params[:id])
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
