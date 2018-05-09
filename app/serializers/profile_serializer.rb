class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :user, :first_name, :last_name

  def user
    UserSerializer.new(object.user).attributes
  end

end
