class Post < ActiveRecord::Base
  include Extras
  include Constants
  attr_accessible :body, :published, :title
  new_class_method :bar
  declare_constants something: 1, else: 2
end
