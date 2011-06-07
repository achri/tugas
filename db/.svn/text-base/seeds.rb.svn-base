# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

#dummy data category
@seed_category = [
  { 
    :name => "Fashion"
  },
  {
    :name => "Gadget"
  },
  {
    :name => "Book"
  },
  {
    :name => "Baby Clothes",
    :parent_id => 1
  },
  {
    :name => "Night Dress",
    :parent_id => 1
  },
  {
    :name => "T-Shirt",
    :parent_id => 1
  },
  {
    :name => "Jeans",
    :parent_id => 1
  },
  {
    :name => "Gown",
    :parent_id => 1
  },
  {
    :name => "Hats",
    :parent_id => 1
  },
  {
    :name => "Shoes",
    :parent_id => 1
  },
  {
    :name => "Blackberry",
    :parent_id => 2
  },
  {
    :name => "Handphone",
    :parent_id => 2
  },
  {
    :name => "Laptop",
    :parent_id => 2
  },
  {
    :name => "Camera",
    :parent_id => 2
  },
  {
    :name => "Commic",
    :parent_id => 3
  },
  {
    :name => "Novel",
    :parent_id => 3
  },
]

Category.create(@seed_category)
#end dummy data categories

#dummy data article
@seed_article = [
  {
    :title => "Lorem ipsum 1",
    :body => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
    eiusmod tempor incididunt ut labore et dolore magna.",
    :user_id => 1
  },
  {
    :title => "Lorem ipsum 2",
    :body => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
    eiusmod tempor incididunt ut labore et dolore magna.",
    :user_id => 1
  },
  {
    :title => "Lorem ipsum 3",
    :body => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
    eiusmod tempor incididunt ut labore et dolore magna.",
    :user_id => 1
  },
  {
    :title => "Lorem ipsum 4",
    :body => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
    eiusmod tempor incididunt ut labore et dolore magna.",
    :user_id => 1
  },
  {
    :title => "Lorem ipsum 5",
    :body => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
    eiusmod tempor incididunt ut labore et dolore magna.",
    :user_id => 1
  },
  {
    :title => "Lorem ipsum 6",
    :body => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
    eiusmod tempor incididunt ut labore et dolore magna.",
    :user_id => 1
  },
]

Article.create(@seed_article)
#end dummy data article

#dummy data user
@seed_user = [
  {
    :login => "ahrie",
    :name => "Achri Kurniadi",
    :email => "a@a.com",
    :crypted_password => "bdfc2ae78a14ead305c2b6767ca9d287e5459ae3",
    :salt => "5a333d24e4aa7c946882c2326eab66386b220c35",
    :address => "PASKO",
    :phone_number => "0223212331",
    :birthday => "1986-8-8 11:01:03",
    :gander => "1",
    :ym => "yahoo messanger",
    :gtalk => "google talk",
    :facebook => "facebook",
    :blog => "blogan"
  }
]

User.create(@seed_user)
#end dummy data user

#dummy data product
@seed_product = [
  {
    :name => "BB Curve Javelin 1",
    :price => 2100,
    :description => "Available in black market",
    :location => "World",
    :weight => 23,
    :user_id => 1,
    :category_id => 11
  },
  {
    :name => "BB Curve Javelin 2",
    :price => 2100,
    :description => "Available in black market",
    :location => "World",
    :weight => 23,
    :user_id => 1,
    :category_id => 11
  },
  {
    :name => "BB Curve Javelin 3",
    :price => 2100,
    :description => "Available in black market",
    :location => "World",
    :weight => 23,
    :user_id => 1,
    :category_id => 11
  },
  {
    :name => "BB Curve Javelin 4",
    :price => 2100,
    :description => "Available in black market",
    :location => "World",
    :weight => 23,
    :user_id => 1,
    :category_id => 11
  },
  {
    :name => "BB Curve Javelin 5",
    :price => 2100,
    :description => "Available in black market",
    :location => "World",
    :weight => 23,
    :user_id => 1,
    :category_id => 11
  },
  {
    :name => "BB Curve Javelin 6",
    :price => 2100,
    :description => "Available in black market",
    :location => "World",
    :weight => 23,
    :user_id => 1,
    :category_id => 11
  },
  {
    :name => "BB Curve Javelin 7",
    :price => 2100,
    :description => "Available in black market",
    :location => "World",
    :weight => 23,
    :user_id => 1,
    :category_id => 11
  }
]

Product.create(@seed_product)
#end dummy data product