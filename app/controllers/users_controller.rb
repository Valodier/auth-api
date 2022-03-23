class UsersController < ApplicationController
  
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )

    if user.save
      render json: {message: "User created succesfully"}, status: :created
    else
      render json: {message: user.errors.full_messages}, status: :bad_request
    end
  end

  def show
    user = User.find_by(id:params["id"])
    render json: {message: current_user}
  end
end
