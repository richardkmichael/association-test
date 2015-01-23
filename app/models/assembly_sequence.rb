class AssemblySequence < ActiveRecord::Base
  belongs_to :car
  belongs_to :part
end
