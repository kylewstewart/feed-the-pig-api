class ApplicationController < ActionController::API

  private

  def token
    request.headers['Authorization']
  end

  def decode_token
    if token
      begin
        JWT.decode(token, nil, false)
      rescue JWT::DecodeError
        return [{}]
      end
    else
      [{}]
    end
  end

  def user_id
    decode_token.first['user_id']
  end

  def current_user
    @current_user ||= User.find_by(id: user_id)
  end

  def authorize_user!
    if !current_user.present?
      render json: {error: 'No User id present'}
    end
  end

end
