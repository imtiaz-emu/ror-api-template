class AuthenticateUser
  prepend SimpleCommand
  attr_accessor :email, :password, :remember_me

  #this is where parameters are taken when the command is called
  def initialize(email, password, remember_me)
    @email = email
    @password = password
    @remember_me = remember_me
  end

  #this is where the result gets returned
  def call
    if remember_me == 'on'
      JsonWebToken.encode(user_id: user.id, expiry_date: 10.days.from_now) if user
    else
      JsonWebToken.encode(user_id: user.id) if user
    end
  end

  private

  def user
    user = User.find_by_email(email)
    return user if user && user.authenticate(password)

    errors.add :user_authentication, 'Invalid credentials'
    nil
  end
end
