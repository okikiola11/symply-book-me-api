class ApplicationController < ActionController::API
  SECRET_KEY = Rails.application.secrets.secret_base_key.to_s

  def authorize
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end

  private

  def encode_token(payload)
    JWT.encode(payload, SECRET_KEY)
  end

  def auth_header
    # { Authorization: 'Bearer <token>' }
    request.headers['Authorization']
  end

  def decoded_token
    return unless auth_header

    token = auth_header.split[1]
    # header: { 'Authorization': 'Bearer <token>' }
    begin
      JWT.decode(token, SECRET_KEY, true, algorithm: 'HS256')
    rescue JWT::DecodeError
      nil
    end
  end

  def logged_in_user
    return unless decoded_token

    user_id = decoded_token[0]['user_id']
    @current_user = User.find_by(id: user_id)
  end

  def logged_in?
    !!logged_in_user
  end
end
