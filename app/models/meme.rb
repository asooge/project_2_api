class Meme < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
end
