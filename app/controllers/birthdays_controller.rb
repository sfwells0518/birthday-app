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
end
