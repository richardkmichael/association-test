class Car < ActiveRecord::Base
  has_many :assembly_lists
  has_many :parts, through: :assembly_sequence
end
