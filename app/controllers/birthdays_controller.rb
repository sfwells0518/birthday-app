class BirthdaysController < ApplicationController
  def index
    @birthdays = Birthday.all
    render :index
    # render json: { message: "birthday index test" }
  end
end
