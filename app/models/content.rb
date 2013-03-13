class Content < ActiveRecord::Base
  validates_presence_of :title, :body, :description, :quote
end
