class Product < ActiveRecord::Base
  belongs_to :category# relationship to one category
  belongs_to :user # relationship to one user

  validates_presence_of :name, :price, :user_id, :category_id, :weight
  validates_uniqueness_of :name
  validates_numericality_of :price, :weight
  
  # plugin = will_paginate
  cattr_reader :per_page
  @@per_page = 5

end
