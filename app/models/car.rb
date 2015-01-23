require 'pry'

class Car < ActiveRecord::Base
  has_many :assembly_sequences

  has_many :parts, through: :assembly_sequences do
    # This block generates a module, which is not included, but used to extend.

    # Is this a surprising number of extend calls?
    #
    #  CarPartsAssociationExtension extended in #<Part::ActiveRecord_Relation:0x007fcd87322b28>
    #  CarPartsAssociationExtension extended in #<Part::ActiveRecord_Relation:0x007fcd87322650>
    #  CarPartsAssociationExtension extended in #<Part::ActiveRecord_Relation:0x007fcd87322e70>
    #  CarPartsAssociationExtension extended in #<Part::ActiveRecord_Relation:0x007fcd87322e70>
    #  CarPartsAssociationExtension extended in #<Part::ActiveRecord_AssociationRelation:0x007fcd87321c00>
    #  CarPartsAssociationExtension extended in #<Part::ActiveRecord_AssociationRelation:0x007fcd87321c00>
    #  CarPartsAssociationExtension extended in #<Part::ActiveRecord_Associations_CollectionProxy:0x007fcd872fb6b8>
    #  CarPartsAssociationExtension extended in #<Part::ActiveRecord_Associations_CollectionProxy:0x007fcd872fb6b8>
    #  CarPartsAssociationExtension extended in #<Part::ActiveRecord_AssociationRelation:0x007fcd8581a1f0>
    #  CarPartsAssociationExtension extended in #<Part::ActiveRecord_AssociationRelation:0x007fcd8581a1f0>
    #
    def self.extended(klass)
      puts "#{self.name} extended in #{klass}"
      # binding.pry
    end

    # puts "hello world"
  end
end
