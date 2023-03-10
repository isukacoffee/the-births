class BirthdaysController < ApplicationController
  def index
    @birthday = Birthday.includes(:user)
  end

  def new
    @birthday = Birthday.new
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
  end



  private

  def birthday_params
    params.require(:birthday).permit(:date, :celebrate_person_name).merge(user_id: current_user.id)
  end
  
end
