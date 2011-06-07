class Category < ActiveRecord::Base
  # relationship from one product
  has_many :products
  has_many :child_categories, :class_name => "Category", :foreign_key => :parent_id #, :conditions => ["parent_id IS NOT NULL"]
  belongs_to :parent_category, :class_name => "Category", :foreign_key => :parent_id

  named_scope :all_parent, :conditions => ["parent_id IS NULL"]

  validates_presence_of :name
  validates_uniqueness_of :name
end
