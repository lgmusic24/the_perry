class Story < ApplicationRecord
  has_many :characters, dependent: :destroy
  accepts_nested_attributes_for :characters, :allow_destroy => true

  validates_presence_of :name
end
