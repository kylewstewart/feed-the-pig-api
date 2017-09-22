class Api::V1::AuthController < ApplicationController
  before_action :authorize_user!, only: [:show]

  def show
    render json: {
      id: current_user.id,
    }
  end

  def create
    user = User.find(params[:userId])
    if user.authenticate(params[:code], 300)
      jwt = JWT.encode({user_id: user.id}, nil, 'none')
      render json: {
        id: user.id,
        token: jwt,
      }
    else
      render json: {
        error: 'Bad Code'
      }, status: 404
    end
  end
end
