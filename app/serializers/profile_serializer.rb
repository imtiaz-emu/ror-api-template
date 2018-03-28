class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :user

  def user
    UserSerializer.new(object.user).attributes
  end

end
