class List < ActiveRecord::Base
  validates_presence_of :list_name
  validates_uniqueness_of :list_name
  has_many :items
end
