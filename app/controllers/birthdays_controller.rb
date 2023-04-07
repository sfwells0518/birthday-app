class BirthdaysController < ApplicationController
  def index
    @birthdays = Birthday.all
    render :index
    # render json: { message: "birthday index test" }
  end

  def show
    @birthday = Birthday.find_by(id: params[:id])
    render :show
    # render json: { message: "birthday show test" }
  end

  def create
    @birthday = Birthday.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      date_of_birth: params[:date_of_birth],
    )
    @birthday.save
    render :show
    # render json: { message: "birthday create test" }
  end

  def update
    @birthday = Birthday.find_by(id: params[:id])
    @birthday.first_name = params[:first_name] || @birthday.first_name
    @birthday.last_name = params[:last_name] || @birthday.last_name
    @birthday.date_of_birth = params[:date_of_birth] || @birthday.date_of_birth

    @birthday.save
    render :show
  end
end
