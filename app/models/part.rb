require 'pry'

class Part < ActiveRecord::Base
  # after_initialize :set_car

  has_many :assembly_sequences
  has_many :cars, through: :assembly_sequences

  protected

  def set_car
    binding.pry
  end
end
