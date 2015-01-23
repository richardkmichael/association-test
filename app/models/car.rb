class Car < ActiveRecord::Base
  has_many :assembly_sequences
  has_many :parts, through: :assembly_sequences do
    puts self
    puts "hello world"
    def my_method
      puts "hello world my method"
    end
  end
end
