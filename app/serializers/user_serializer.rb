# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :memes, :comments

end
