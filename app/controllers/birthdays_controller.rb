class BirthdaysController < ApplicationController
  def index
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

  private

  def birthday_params
    params.require(:birthday).permit(:date, :user_id, :celebrate_person_name)
  end
  
end
