class UpvoteSerializer < ActiveModel::Serializer
  attributes :id, :value
  has_one :user
  has_one :meme
end
