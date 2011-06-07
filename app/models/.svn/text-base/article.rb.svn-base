class Article < ActiveRecord::Base
  # relationship to many comments
  has_many :comments

  validates_presence_of :title, :body, :user_id

  cattr_reader :per_page
  @@per_page = 5
end
