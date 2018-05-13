class UsersController < ActionController::API
  def test
  end

  #
  def sign_in_or_create
    success = false
    message = ""
    user_id = nil
    dataToReturn = {}
    user = User.find_by_email(params[:email].downcase)
    if user
      if user.valid_password?(params[:password])
        success = true
      else
        success = false
        message = "Invalid password"
      end
    else
      user = User.create(email: params[:email].downcase,
                  password: params[:password],
                  password_confirmation: params[:password])
      message = "Successfully created account"
      success = true
    end
    @dataToReturn = {
      success: success,
      message: message,
      user_id: user.try(:id),
    }
  end

end
