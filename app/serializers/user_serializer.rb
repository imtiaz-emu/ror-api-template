class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :roles

  def roles
    object.roles.pluck(:name)
  end
end
