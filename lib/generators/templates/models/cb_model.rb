class <%= class_name %> < ActiveRecord::Base
  validates_presence_of :author, :text
end
