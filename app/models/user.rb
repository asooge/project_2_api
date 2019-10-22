# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :memes
  has_many :comments
  has_many :upvotes
end
