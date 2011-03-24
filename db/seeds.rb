# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Product.delete_all

Product.create(:title => 'Debug It!', 
  :description =>
    %{<p>Professional programmers develop a knack of unerringly zeroing in 
      on the root cause of a bug. They can do that because they’ve written 
      a lot of buggy code and then gained experience fixing it.
    </p>}, 
  :image_url => '/images/debug.jpg', 
  :price => 34.95)
  
Product.create(:title => 'Programming Ruby 1.9', 
  :description =>
    %{<p> Ruby is the fastest growing and most exciting dynamic language out 
      there. If you need to get working programs delivered fast, you should 
      add Ruby to your toolbox.
    </p>}, 
  :image_url => '/images/ruby.jpg', 
  :price => 49.50)
  
Product.create(:title => 'Web Design for Developers', 
  :description =>
    %{<p> Web Design for Developers will show you how to make your web-based 
      application look professionally designed. We’ll help you learn how to 
      pick the right colors and fonts, avoid costly interface and accessibility 
      mistakes—your application will really come alive.
    </p>}, 
  :image_url => '/images/wd4d.jpg', 
  :price => 42.95)