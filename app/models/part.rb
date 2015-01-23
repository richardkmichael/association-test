class Part < ActiveRecord::Base
  has_many :assembly_lists
  has_many :cars, through: :assembly_sequence
end
