class Api::V1::UsersController < ApplicationController

  def create
    user = User.find_or_create_by(mobile: params[:mobile])
    begin
      user.send_auth_code
      response = {id: user.id}
    rescue
      response = {error: "i can't send a code to that mobile"}
    end

    render json: response
  end
end
