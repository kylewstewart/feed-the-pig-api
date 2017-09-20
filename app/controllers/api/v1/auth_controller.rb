class Api::V1::AuthController < ApplicationController
  before_action :authorize_user!, only: [:show]

  def show
    render json: {
      id: current_user.id,
      username: current_user.username
    }
  end

  def create
    user = User.find(params[:userId])
    if user.authenticate(params[:code], 3000)
      render json: {
        id: user.id,
        jwt: JWT.encode({user_id: user.id}, ENV['JWT_SECRET'], ENV['JWT_ALGORITHM'])
      }
    else
      render json: {
        error: 'Your code tastes bad !'
      }, status: 404
    end
  end
end
