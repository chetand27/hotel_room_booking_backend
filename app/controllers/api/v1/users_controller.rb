class Api::V1::UsersController < ApplicationController
  def index
    user = User.first
    render json: user, only: [:id, :first_name, :last_name], status: 200
  end
end
